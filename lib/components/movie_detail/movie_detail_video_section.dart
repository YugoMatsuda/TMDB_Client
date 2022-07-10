import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/video/video.dart';
import '../../providers/videos_state_provider.dart';
import '../../rooting/app_routes.dart';

class MovieDetailVideoSection extends StatelessWidget {
  const MovieDetailVideoSection({
    Key? key,
    required this.ref,
    required this.movieId,
    required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;
  final WidgetRef ref;
  final int movieId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0, left: 16),
            child: Text('Trailer', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none)),
          ),
          _videoList(),
        ],
      ),
    );
  }

  Widget _videoList() {
    return ref.watch(videosStateProvider(movieId)).when(
        data: (data) {
          if (data.results.isEmpty) {
            return const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 16),
              child: Text('Video is not found.', style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none)),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.results.length,
              itemBuilder: (BuildContext context, int index) {
                final video = data.results[index];
                return _videoCard(context, video);
              },
            ),
          );
        },
        error: (error, stack) => Text(error.toString()),
        loading: () => const Center(
            child: AspectRatio(
                aspectRatio: 1, child: CircularProgressIndicator())
        )
    );
  }

  Widget _videoCard(BuildContext context, Video video) {
    final key = video.key;
    final thumbnailUrl = "http://img.youtube.com/vi/$key/default.jpg";
    final url = "https://www.youtube.com/watch?v=$key";
    final width = _screenSize.width * 0.9;
    final height = width/16*9;
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.webView, extra: url);
      },
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: CachedNetworkImage(
                  imageUrl: thumbnailUrl,
                  errorWidget: (context, url, error) {
                    return Container(
                      color: Colors.grey,
                    );
                  },
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(video.name, style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none)),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
