import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/credits/credits.dart';
import 'package:movie_log_app/repositopry/movie_repository.dart';
import '../api/data/credits/credits.dart';

final creditsStateProvider = StateNotifierProvider.autoDispose.family<CreditsStateNotifier, AsyncValue<Credits>, int>((ref, movieId) {
  final MovieRepository movieRepository = ref.read(movieRepositoryProvider);
  return CreditsStateNotifier(movieRepository, movieId);
});

class CreditsStateNotifier extends StateNotifier<AsyncValue<Credits>> {
  final MovieRepository _movieRepository;
  final int _movieId;

  CreditsStateNotifier(this._movieRepository, this._movieId)
      : super(const AsyncValue.loading()) {
    getCredits();
  }

  Future<void> getCredits() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
        () => _movieRepository.getCredits(movieId: _movieId));
  }
}
