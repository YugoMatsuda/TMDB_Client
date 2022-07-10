import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../api/api_constants.dart';
import '../../etc/constants_widget_size.dart';
import '../../providers/credits_state_provider.dart';

class MovieDetailCastSection extends StatelessWidget {
  const MovieDetailCastSection({
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
    final constantsWidgetSize = ConstantsWidgetSize(screenSize: _screenSize);
    return SizedBox(
      width: _screenSize.width,
      height: (_screenSize.width / 3 - 16) * 1.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0, left: 16),
            child: Text('Cast', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none)),
          ),
          Expanded(
            child: ref.watch(creditsStateProvider(movieId)).when(
                data: (data) => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.cast?.length,
                    itemBuilder: (context, index) {
                      final cast = data.cast![index];
                      final profilePath =  cast.profilePath;
                      return SizedBox(
                        width: constantsWidgetSize.normalMovieImageWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                              children: [
                                CachedNetworkImage(
                                    imageUrl: '$BASE_IMAGE_URL$profilePath',
                                    errorWidget: (context, url, error) {
                                      return Container(
                                        color: Colors.grey,
                                      );
                                    },
                                    fit: BoxFit.cover
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      cast.name,
                                      maxLines: 3,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          decoration: TextDecoration.none),),
                                  ),
                                )
                              ]
                          ),
                        ),
                      );
                    }),
                error: (error, stack) => Text(error.toString()),
                loading: () => const Center(
                    child: AspectRatio(
                        aspectRatio: 1, child: CircularProgressIndicator())
                )
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
