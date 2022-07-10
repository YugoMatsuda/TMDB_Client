import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_log_app/model/cache_movie/cache_movie_model.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Movie({
    required int id,
    required String title,
    required String? originalTitle,
    required int? voteCount,
    required double? voteAverage,
    required String? releaseDate,
    required String? originalLanguage,
    required List<int>? genreIds,
    required String? backdropPath,
    required String? posterPath,
    required String? overview,
    required double? popularity,
    required String? mediaType,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);

  factory Movie.convertFromCachedMovie(CacheMovieModel movie) {
    return Movie(
        id: movie.id,
        title: movie.title,
        originalTitle: movie.originalTitle,
        voteCount: movie.voteCount,
        voteAverage: movie.voteAverage,
        releaseDate: movie.releaseDate,
        originalLanguage: movie.originalLanguage,
        backdropPath: movie.backdropPath,
        posterPath: movie.posterPath,
        overview: movie.overview,
        popularity: movie.popularity,
        mediaType: movie.mediaType,
        genreIds: [],
    );
  }
}