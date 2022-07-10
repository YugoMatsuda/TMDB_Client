import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/components/movie_cell_list.dart';
import 'package:movie_log_app/providers/favorites_state_provider.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        middle: Text('Favorites', style: TextStyle(color: Theme.of(context).textTheme.bodyText1?.color)),
      ),
      child: Scaffold(
        body: ref.watch(favoritesStateProvider).when(
            data: (data) => MovieCellList(movieResult: data, scrollController: null),
            error: (error, stack) => Text(error.toString()),
            loading: () => const Center(
                child: AspectRatio(
                    aspectRatio: 1, child: CircularProgressIndicator()))),
      ),
    );
  }
}
