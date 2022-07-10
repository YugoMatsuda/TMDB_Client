import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_log_app/components/movie_cell.dart';
import '../api/data/movie_result/movie_result.dart';

class MovieCellList extends StatelessWidget {
  MovieCellList({Key? key, required this.movieResult, required this.scrollController}) : super(key: key);
  final MovieResult movieResult;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      itemCount: movieResult.results.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.grey,),
      itemBuilder: (BuildContext context, int index) {
        final movie = movieResult.results[index];
        return MovieCell(movie: movie);
        },
    );
  }
}
