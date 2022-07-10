import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/repositopry/movie_repository.dart';
import '../api/data/movie_result/movie_result.dart';

final nowPlayingStateProvider = StateNotifierProvider.autoDispose<NowPlayingStateNotifier, AsyncValue<MovieResult>>((ref) {
  final MovieRepository movieRepository = ref.read(movieRepositoryProvider);
  return NowPlayingStateNotifier(movieRepository);
});

class NowPlayingStateNotifier extends StateNotifier<AsyncValue<MovieResult>> {
  final MovieRepository _movieRepository;
  int _page = 0;

  NowPlayingStateNotifier(this._movieRepository)
      : super(const AsyncValue.loading()) {
    getNowPlaying();
  }

  Future<void> getNowPlaying() async {
    try {
      _page++;
      final response = await _movieRepository.getNowPlaying(page: _page);
      if(state.value == null) {
        state = AsyncValue.data(response);
        return;
      }
      final storedMovies = state.value?.results;
      var newList = {...?storedMovies, ...response.results}.toList();
      state = AsyncValue.data(state.value!.copyWith(results: newList));
    } catch(e) {
      print(e.toString());
      state = AsyncValue.error(e);
    }
  }
}
