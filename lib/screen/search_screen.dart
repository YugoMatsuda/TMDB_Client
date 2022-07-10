import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import 'package:movie_log_app/components/movie_cell.dart';
import 'package:movie_log_app/model/cache_movie/cache_movie_model.dart';
import 'package:movie_log_app/model/search_keyword/search_keyword_model.dart';
import 'package:movie_log_app/providers/search_state_provider.dart';
import '../api/api_constants.dart';
import '../api/data/movie/movie.dart';
import '../etc/constants_widget_size.dart';
import '../rooting/app_routes.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _textController = TextEditingController();
  final FocusNode _focus = FocusNode();
  bool _isFocus = false;
  String _searchKeyword = '';

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    _textController.addListener(_onTextChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocus = _focus.hasFocus;
    });
  }

  void _onTextChange() {
    setState(() {
      _searchKeyword = _textController.text;
    });
    if (_searchKeyword.isEmpty) {
      ref.read(searchStateProvider.notifier).resetSearchResult();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          middle: Text('Search',
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1?.color)),
        ),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 4,
                ),
                _buildSearchBar(),
                _buildBody(screenSize),
              ],
            ),
          ),
        ));
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Flexible(
          child: Container(
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: CupertinoSearchTextField(
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1?.color),
                  onSubmitted: (value) {
                    if (value.isEmpty) {
                      return;
                    }
                    ref
                        .read(searchStateProvider.notifier)
                        .getMovieByKeyword(value);
                  },
                  controller: _textController,
                  focusNode: _focus,
                ),
              )),
        ),
        Visibility(
          visible: _isFocus,
          child: TextButton(
            child: const Text(
              'Cancel',
            ),
            onPressed: () {
              _textController.clear();
              _focus.unfocus();
            },
          ),
        )
      ],
    );
  }

  Widget _buildBody(Size screenSize) {
    return ref.watch(searchStateProvider).when(
        data: (data) {
          final genreResult = data.genreResult;
          final searchResult = data.searchResult;
          final searchKeywords = data.searchKeywords;
          final cachedMovies = data.cachedMovies;
          if (_isFocus && _searchKeyword.isEmpty) {
            return _buildSearchKeywordList(searchKeywords);
          } else if (_isFocus || _searchKeyword.isNotEmpty) {
            return _buildSearchResult(searchResult);
          } else {
            return _buildDefault(genreResult, cachedMovies, screenSize);
          }
        },
        error: (error, stack) => Text(error.toString()), //エラー時にリロードボタンを出す
        loading: () => const Center(
            child: AspectRatio(
                aspectRatio: 1, child: CircularProgressIndicator())));
  }

  Widget _buildSearchResult(MovieResult movieResult) {
    if (movieResult.results.isEmpty) {
      return const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 16),
        child: Text('Movie is not found.', style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none)),
      );
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: movieResult.results.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.grey,
      ),
      itemBuilder: (BuildContext context, int index) {
        final movie = movieResult.results[index];
        return MovieCell(movie: movie);
      },
    );
  }

  Widget _buildDefault(GenreResult genreResult, List<CacheMovieModel> movies, Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecentVisitMovieList(movies: movies, screenSize: screenSize),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8, top: 8),
          child: Text(
            'Genre',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Theme.of(context).cardColor,
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: genreResult.genres.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    color: Colors.grey,
                  ),
              itemBuilder: (BuildContext context, int index) {
                final genre = genreResult.genres[index];
                return ListTile(
                  title: Text(genre.name),
                  dense: true,
                  onTap: () {
                    context.push(AppRoutes.genre, extra: genre);
                  },
                );
              }),
        ),
      ],
    );
  }

  Widget _buildSearchKeywordList(List<SearchKeywordModel> searchKeywords) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8, top: 8),
          child: Text(
            'Recent search',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Theme.of(context).cardColor,
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: searchKeywords.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    color: Colors.grey,
                  ),
              itemBuilder: (BuildContext context, int index) {
                final searchKeyword = searchKeywords[index].keyword;
                return ListTile(
                  title: Text(searchKeyword),
                  dense: true,
                  onTap: () {
                    _textController.text = searchKeyword;
                    ref
                        .read(searchStateProvider.notifier)
                        .getMovieByKeyword(searchKeyword);
                    // context.push(AppRoutes.genre, extra: genre);
                  },
                  trailing: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      ref.read(searchStateProvider.notifier)
                          .deleteKeyword(searchKeyword);
                    },
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class RecentVisitMovieList extends StatelessWidget {
  const RecentVisitMovieList({
    Key? key,
    required this.movies,
    required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;
  final List<CacheMovieModel> movies;

  @override
  Widget build(BuildContext context) {
    final constantsWidgetSize = ConstantsWidgetSize(screenSize: _screenSize);
    return SizedBox(
      width: _screenSize.width,
      height: (_screenSize.width / 3 - 16) * 1.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8,),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, left: 16),
            child: Text('Recent Visit', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  final posterPath =  movie.posterPath;
                  return GestureDetector(
                    onTap: () {
                      context.push(AppRoutes.movieDetail, extra: Movie.convertFromCachedMovie(movie));
                    },
                    child: SizedBox(
                      width: constantsWidgetSize.normalMovieImageWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  CachedNetworkImage(
                            imageUrl: '$BASE_IMAGE_URL$posterPath',
                            errorWidget: (context, url, error) {
                              return Container(
                                  color: Colors.grey,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        maxLines: 3,
                                        movie.title,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            decoration: TextDecoration.none),),
                                    ),
                                  ));
                            },
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
