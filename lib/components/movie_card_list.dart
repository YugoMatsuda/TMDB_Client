import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_log_app/etc/constants_widget_size.dart';
import '../api/api_constants.dart';
import '../api/data/movie_result/movie_result.dart';
import '../rooting/app_routes.dart';

class MovieCardList extends StatelessWidget {
  const MovieCardList({Key? key, required this.movieResult, required this.scrollController}) : super(key: key);
  final MovieResult movieResult;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      controller: scrollController,
      itemCount: movieResult.results.length,
      itemBuilder: (BuildContext context, int index) {
        final movie = movieResult.results[index];
        final posterPath = movie.posterPath;
        final backdropPath = movie.backdropPath;
        final width = screenSize.width * 0.9;
        final height = width/16*9;
        final constantsWidgetSize = ConstantsWidgetSize(screenSize: screenSize);
        return GestureDetector(
          onTap: () {
            context.push(AppRoutes.movieDetail, extra: movie);
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: width,
                height: height,
                child: Stack(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                      child: CachedNetworkImage(
                          imageUrl: '$BASE_IMAGE_URL$backdropPath',
                          errorWidget: (context, url, error) {
                            return Container(
                              color: Colors.grey,
                            );
                          },
                          fit: BoxFit.cover),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: SizedBox(
                            width: screenSize.width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(movie.title, maxLines: 2, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                                const SizedBox(height: 32,),
                                Text(movie.releaseDate ?? '', style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold, decoration: TextDecoration.none))
                              ],
                            ),
                          ),
                        ),
                        Hero(
                          tag: movie.id,
                          child: Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 1),
                                ),
                              ],
                              color: Colors.black,
                            ),
                            width: constantsWidgetSize.normalMovieImageWidth,
                            height: constantsWidgetSize.normalMovieImageHeight,
                            child: CachedNetworkImage(
                                imageUrl: '$BASE_IMAGE_URL$posterPath',
                                errorWidget: (context, url, error) {
                                  return Container(
                                    color: Colors.grey,
                                  );
                                },
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
