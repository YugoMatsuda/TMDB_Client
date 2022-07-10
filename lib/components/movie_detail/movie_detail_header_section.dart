import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../api/api_constants.dart';
import '../../api/data/movie/movie.dart';
import '../../etc/constants_widget_size.dart';

class MovieDetailHeaderSection extends StatelessWidget {
  const MovieDetailHeaderSection({
    Key? key,
    required Size screenSize,
    required this.movie,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final backDropPath = movie.backdropPath;
    final posterPath = movie.posterPath;
    final constantsWidgetSize = ConstantsWidgetSize(screenSize: _screenSize);
    return Stack(
      children: [
        SizedBox(
          width: _screenSize.width,
          height: _screenSize.width * 0.56,
          child: CachedNetworkImage(
              imageUrl: '$BASE_IMAGE_URL$backDropPath',
              errorWidget: (context, url, error) {
                return Container(
                  color: Colors.grey,
                );
              },
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 32),
          child: Hero(
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
          ),
        )
      ],
    );
  }
}