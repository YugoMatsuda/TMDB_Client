import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/repositopry/movie_repository.dart';
import '../api/data/movie_result/movie_result.dart';

final trendingStateProvider = StateNotifierProvider.autoDispose<TrendingStateNotifier, AsyncValue<MovieResult>>((ref) {
  final MovieRepository trendingRepository = ref.read(movieRepositoryProvider);
  return TrendingStateNotifier(trendingRepository);
});

class TrendingStateNotifier extends StateNotifier<AsyncValue<MovieResult>> {
  final MovieRepository _trendingRepository;

  TrendingStateNotifier(this._trendingRepository)
      : super(const AsyncValue.loading()) {
    getTrending();
  }

  Future<void> getTrending() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _trendingRepository.getTrending());
  }
}
