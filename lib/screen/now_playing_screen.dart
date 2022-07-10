import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/components/movie_grid_list.dart';
import 'package:movie_log_app/etc/diplay_options.dart';
import 'package:movie_log_app/providers/display_option_state_provider.dart';
import '../components/movie_card_list.dart';
import '../providers/now_playing_state_provider.dart';

class NowPlayingScreen extends ConsumerStatefulWidget {
  const NowPlayingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends ConsumerState<NowPlayingScreen> {
  ScrollController _scrollController = ScrollController();
  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      print("comes to bottom");
      ref.read(nowPlayingStateProvider.notifier).getNowPlaying();
    }
  }

  void _showDisplayOptions(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 320,
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.grey,),
                itemCount: DisplayOption.values.length,
                itemBuilder: (BuildContext context, int index) {
                  final displayOption = DisplayOption.values[index];
                  return ListTile(
                    title: Text(displayOption.name),
                    onTap: () {
                      ref.read(displayOptionStateProvider.notifier).changeDisplayOption(displayOption);
                    });
                }),
          );
        });
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
    final displayOptionState = ref.watch(displayOptionStateProvider);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          middle: Text('NowPlaying', style: TextStyle(color: Theme.of(context).textTheme.bodyText1?.color)),
          trailing: GestureDetector(
            onTap: () {
              _showDisplayOptions(context);
            },
            child: const Icon(
              CupertinoIcons.gear_solid,
              color: CupertinoColors.activeBlue,
            ),
          )),
      child: ref.watch(nowPlayingStateProvider).when(
          data: (data) {
            switch(displayOptionState) {
              case DisplayOption.list:
                return MovieCardList(
                    scrollController: _scrollController, movieResult: data);
              case DisplayOption.fourGrid:
                return MovieGridList(
                    scrollController: _scrollController, movieResult: data, crossAxisCount: 4,);
              case DisplayOption.threeGrid:
                return MovieGridList(
                    scrollController: _scrollController, movieResult: data, crossAxisCount: 3);
            }
          },
          error: (error, stack) => Text(error.toString()), //エラー時にリロードボタンを出す
          loading: () => const Center(
              child: AspectRatio(
                  aspectRatio: 1, child: CircularProgressIndicator()))),
    );
  }
}
