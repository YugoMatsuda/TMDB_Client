import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';
import 'package:movie_log_app/components/movie_cell_list.dart';
import '../providers/movie_by_genre_state_provider.dart';

class MovieByGenreScreen extends ConsumerStatefulWidget {
  final Genre genre;
  const MovieByGenreScreen(this.genre, {Key? key}) : super(key: key);

  @override
  ConsumerState<MovieByGenreScreen> createState() => _MovieByGenreScreenState();
}

class _MovieByGenreScreenState extends ConsumerState<MovieByGenreScreen> {
  ScrollController _scrollController = ScrollController();
  void _scrollListener() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      print("comes to bottom");
      ref.read(movieByGenreStateProvider(widget.genre.id).notifier).getMovies();
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          middle: Text(widget.genre.name, style: TextStyle(color: Theme.of(context).textTheme.bodyText1?.color)),
         ),
      child: Scaffold(
        body: ref.watch(movieByGenreStateProvider(widget.genre.id)).when(
            data: (data) {
              return MovieCellList(movieResult: data, scrollController: _scrollController);
            },
            error: (error, stack) => Text(error.toString()), //エラー時にリロードボタンを出す
            loading: () => const Center(
                child: AspectRatio(
                    aspectRatio: 1, child: CircularProgressIndicator()))),
      ),
    );
  }
}
