import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/video/video.dart';
import 'package:movie_log_app/repositopry/movie_repository.dart';

final videosStateProvider = StateNotifierProvider.autoDispose.family<VideosStateNotifier, AsyncValue<VideoResult>, int>((ref, movieId) {
  final MovieRepository movieRepository = ref.read(movieRepositoryProvider);
  return VideosStateNotifier(movieRepository, movieId);
});

class VideosStateNotifier extends StateNotifier<AsyncValue<VideoResult>> {
  final MovieRepository _movieRepository;
  final int _movieId;

  VideosStateNotifier(this._movieRepository, this._movieId)
      : super(const AsyncValue.loading()) {
    getVideos();
  }

  Future<void> getVideos() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
            () => _movieRepository.getVideos(movieId: _movieId));
  }
}