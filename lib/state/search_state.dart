import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import 'package:movie_log_app/model/cache_movie/cache_movie_model.dart';
import 'package:movie_log_app/model/search_keyword/search_keyword_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(MovieResult(results: [])) MovieResult searchResult,
    required GenreResult genreResult,
    required List<SearchKeywordModel> searchKeywords,
    required List<CacheMovieModel> cachedMovies,
  }) = _SearchState;
}