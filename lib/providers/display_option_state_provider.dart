import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/etc/diplay_options.dart';


final displayOptionStateProvider = StateNotifierProvider.autoDispose<DisplayOptionStateNotifier, DisplayOption>((ref) {
  return DisplayOptionStateNotifier();
});

class DisplayOptionStateNotifier extends StateNotifier<DisplayOption> {
  DisplayOptionStateNotifier(): super(DisplayOption.threeGrid);

  void changeDisplayOption(DisplayOption displayOption)  {
    state = displayOption;
  }
}