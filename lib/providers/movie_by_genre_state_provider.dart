import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/movie/movie.dart';
import 'package:movie_log_app/repositopry/movie_repository.dart';
import '../api/data/movie_result/movie_result.dart';

final movieByGenreStateProvider = StateNotifierProvider.autoDispose.family<MovieByGenreStateNotifier, AsyncValue<MovieResult>, int>((ref, genreId) {
  final MovieRepository movieRepository = ref.read(movieRepositoryProvider);
  return MovieByGenreStateNotifier(genreId, movieRepository);
});

class MovieByGenreStateNotifier extends StateNotifier<AsyncValue<MovieResult>> {
  final int genreId;
  final MovieRepository _movieRepository;
  int _page = 0;

  MovieByGenreStateNotifier(this.genreId, this._movieRepository)
      : super(const AsyncValue.loading()) {
    getMovies();
  }

  Future<void> getMovies() async {
    try {
      _page++;
      final response = await _movieRepository.getMovieByGenre(genreId: genreId, page: _page);
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
