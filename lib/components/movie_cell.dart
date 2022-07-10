import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_log_app/api/data/movie/movie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../api/api_constants.dart';
import '../etc/constants_widget_size.dart';
import '../rooting/app_routes.dart';

class MovieCell extends StatelessWidget {
  final Movie movie;
  const MovieCell({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final constantsWidgetSize = ConstantsWidgetSize(screenSize: screenSize);
    final posterPath = movie.posterPath;
    final score = (movie.voteAverage ?? 0) / 10;
    final percent = (movie.voteAverage ?? 0) * 10;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        context.push(AppRoutes.movieDetail, extra: movie);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, right: 8, bottom: 8),
            child: SizedBox(
              width: constantsWidgetSize.minMovieImageWidth,
              height: constantsWidgetSize.minMovieImageHeight,
              child: Hero(
                tag: movie.id,
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
          ),
          SizedBox(
            width: screenSize.width * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title, maxLines: 2, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 32,),
                  Text(movie.releaseDate ?? '', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500))
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 6.0,
            animation: true,
            percent: score,
            center: Text(
              "$percent",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.green,
          )
        ],
      ),
    );
  }
}
