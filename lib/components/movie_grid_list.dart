import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import 'package:movie_log_app/rooting/app_routes.dart';
import '../api/api_constants.dart';

class MovieGridList extends StatelessWidget {
  final ScrollController scrollController;
  final MovieResult movieResult;
  final int crossAxisCount;

  const MovieGridList({Key? key, required this.scrollController, required this.movieResult, required this.crossAxisCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        controller: scrollController,
        shrinkWrap: true,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 8,
          childAspectRatio: 0.675,
        ),
        itemCount: movieResult.results.length,
        itemBuilder: (context, index) {
          final posterPath = movieResult.results[index].posterPath;
          return GestureDetector(
            onTap: () {
              context.push(AppRoutes.movieDetail, extra: movieResult.results[index]);
            },
            child: Hero(
              tag: movieResult.results[index].id,
              child: Container(
                margin: const EdgeInsets.all(8),
                child: CachedNetworkImage(
                    imageUrl: '$BASE_IMAGE_URL$posterPath',
                    errorWidget: (context, url, error) {
                      return Container(
                        color: Colors.grey,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              maxLines: 3,
                              movieResult.results[index].title,
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
        });
  }
}
