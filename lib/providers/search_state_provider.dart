import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';
import 'package:movie_log_app/api/data/movie/movie.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import 'package:movie_log_app/model/cache_movie/cache_movie_model.dart';
import 'package:movie_log_app/repositopry/genre_repository.dart';
import 'package:movie_log_app/repositopry/movie_repository.dart';

import '../state/search_state.dart';

final searchStateProvider = StateNotifierProvider.autoDispose<SearchStateNotifier, AsyncValue<SearchState>>((ref) {
  final GenreRepository genreRepository = ref.read(genreRepositoryProvider);
  final MovieRepository movieRepository = ref.read(movieRepositoryProvider);
  return SearchStateNotifier(genreRepository, movieRepository);
});

class SearchStateNotifier extends StateNotifier<AsyncValue<SearchState>> {
  final GenreRepository _genreRepository;
  final MovieRepository _movieRepository;

  SearchStateNotifier(this._genreRepository, this._movieRepository)
      : super(const AsyncValue.loading()) {
    init();
  }

  Future<void> init() async {
    try {
      final response = await _genreRepository.getGenre();
      final keywords = await _movieRepository.getSearchKeyword();
      final cachedMovie = await _movieRepository.getCacheMovie();
      state = AsyncValue.data(SearchState(genreResult: response, searchKeywords: keywords, cachedMovies: cachedMovie));
    } catch(e) {
      print(e.toString());
      state = AsyncValue.error(e);
    }
  }

  Future<void> saveCachedMovie(Movie movie) async {
    try {
      await _movieRepository.saveCacheMovie(cacheMovieModel: CacheMovieModel.convertFromMovie(movie));
      final cachedMovie = await _movieRepository.getCacheMovie();
      state = AsyncValue.data(state.value!.copyWith(cachedMovies: cachedMovie));
    } catch(e) {
      print(e.toString());
      state = AsyncValue.error(e);
    }
  }

  Future<void> getMovieByKeyword(String keyword) async {
    try {
      if (state.value == null) {
        return;
      }
      final tmpState = state.value!;
      state = const AsyncValue.loading();
      final response = await _movieRepository.getMovieByKeyword(keyword: keyword);
      state = AsyncValue.data(tmpState.copyWith(searchResult: response));
      _saveKeyword(keyword);
    } catch(e) {
      print(e.toString());
      state = AsyncValue.error(e);
    }
  }

  Future<void> resetSearchResult() async {
    try {
      if (state.value == null) {
        return;
      }
      state = AsyncValue.data(state.value!.copyWith(searchResult: MovieResult(results: [])));
    } catch(e) {
      print(e.toString());
      state = AsyncValue.error(e);
    }
  }

  Future<void> _saveKeyword(String keyword) async {
    try {
      if (state.value == null) {
        return;
      }
      await _movieRepository.saveSearchKeyword(keyword: keyword);
      final keywords = await _movieRepository.getSearchKeyword();
      state = AsyncValue.data(state.value!.copyWith(searchKeywords: keywords));
    } catch(e) {
      print(e.toString());
      state = AsyncValue.error(e);
    }
  }

  Future<void> deleteKeyword(String keyword) async {
    try {
      if (state.value == null) {
        return;
      }
      await _movieRepository.deleteSearchKeyword(keyword: keyword);
      final keywords = await _movieRepository.getSearchKeyword();
      state = AsyncValue.data(state.value!.copyWith(searchKeywords: keywords));
    } catch(e) {
      print(e.toString());
      state = AsyncValue.error(e);
    }
  }
}