import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/providers/trending_state_provider.dart';
import '../api/api_constants.dart';

class TrendingScreen extends ConsumerWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text('Trends'),
          trailing: GestureDetector(
            onTap: () {},
            child: const Icon(
              CupertinoIcons.gear,
              color: CupertinoColors.activeBlue,
            ),
          )),
      child: SafeArea(
        child: ref.watch(trendingStateProvider).when(
            data: (data) => GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.675,
                ),
                itemCount: data.results.length,
                itemBuilder: (context, index) {
                  final posterPath = data.results[index].posterPath;
                  return Container(
                    margin: const EdgeInsets.all(8),
                    child: CachedNetworkImage(
                        imageUrl: '$BASE_IMAGE_URL$posterPath',
                        fit: BoxFit.cover),
                  );
                }),
            error: (error, stack) => Text(error.toString()),
            loading: () => const Center(
                child: AspectRatio(
                    aspectRatio: 1, child: CircularProgressIndicator()))),
      ),
    );
  }
}
