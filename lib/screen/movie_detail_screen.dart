import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/movie/movie.dart';
import 'package:movie_log_app/api/request_body/add_favorite_body.dart';
import 'package:movie_log_app/components/movie_detail/movie_detail_cast_section.dart';
import 'package:movie_log_app/components/movie_detail/movie_detail_video_section.dart';
import 'package:movie_log_app/providers/authentication_state_provider.dart';
import 'package:movie_log_app/providers/favorites_state_provider.dart';
import 'package:movie_log_app/providers/search_state_provider.dart';
import 'package:status_alert/status_alert.dart';
import '../api/api_constants.dart';
import '../components/movie_detail/movie_detail_header_section.dart';
import '../components/movie_detail/movie_detail_overview_section.dart';
import '../components/movie_detail/movie_detail_title_section.dart';

class MovieDetailScreen extends ConsumerStatefulWidget {
  const MovieDetailScreen({required this.movie, Key? key}) : super(key: key);
  final Movie movie;
  @override
  ConsumerState<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends ConsumerState<MovieDetailScreen> {

  @override
  void initState() {
    super.initState();
    ref.read(searchStateProvider.notifier).saveCachedMovie(widget.movie);
  }

  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;
    final screenSize = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            middle: Text('Detail', style: TextStyle(color: Theme.of(context).textTheme.bodyText1?.color)),
            trailing: GestureDetector(
              onTap: _shareMovie,
              child: const Icon(
                CupertinoIcons.ellipsis,
                color: CupertinoColors.activeBlue,
              ),
            )
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieDetailHeaderSection(screenSize: screenSize, movie: movie),
                  MovieDetailTitleSection(screenSize: screenSize,
                      title: movie.title, voteAverage: movie.voteAverage, releaseDate: movie.releaseDate),
                  MovieDetailOverviewSection(overview: movie.overview),
                  MovieDetailCastSection(ref: ref, movieId: movie.id, screenSize: screenSize),
                  MovieDetailVideoSection(ref: ref, movieId: movie.id, screenSize: screenSize),
                  SizedBox(height: 100)
                ],
              ),
            ),
            floatingActionButton: _buildFavoriteButtonIfNeeded(context, ref),
          ),
        ));
  }
  Widget _buildFavoriteButtonIfNeeded(BuildContext context ,WidgetRef ref) {
    final movie = widget.movie;
    ref.watch(authenticationStateProvider);
    final isLogin = ref.watch(authenticationStateProvider.notifier).isLogin();
    // ログインしていたらボタンを表示する
    if (isLogin) {
      ref.watch(favoritesStateProvider);
      final isFavoriteMovie =ref.read(favoritesStateProvider.notifier).isFavoriteMovie(movieId: movie.id);
      return IconButton(
        iconSize: 60,
        onPressed: () {
          final body = AddFavoriteBody(mediaId: movie.id, favorite: !isFavoriteMovie);
          ref.read(favoritesStateProvider.notifier).addFavorite(movie: movie, requestBody: body);
          showAddedFavoriteAlertIfNeeded(context, isFavoriteMovie);
        },
        color: isFavoriteMovie ? Colors.red : Colors.grey,
        icon: const Icon(Icons.favorite_rounded),
      );
    } else {
      return const SizedBox();
    }
  }

  void showAddedFavoriteAlertIfNeeded(BuildContext context, bool isFavoriteMovie) {
    if(!isFavoriteMovie) {
      StatusAlert.show(
        context,
        duration: const Duration(seconds: 2),
        title: 'Added to favorite.',
        configuration: const IconConfiguration(icon: Icons.favorite),
      );
    }
  }

  Future<void> _shareMovie() async {
    final movie = widget.movie;
    final posterPath = movie.posterPath;
    await FlutterShare.share(
        title: movie.title,
        text:  movie.overview,
        linkUrl: '$BASE_IMAGE_URL$posterPath',
    );
  }
}