import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_log_app/api/data/movie/movie.dart';

part 'cache_movie_model.freezed.dart';
part 'cache_movie_model.g.dart';

@freezed
class CacheMovieModel with _$CacheMovieModel {
  const factory CacheMovieModel({
    required int id,
    required String title,
    required String? originalTitle,
    required int? voteCount,
    required double? voteAverage,
    required String? releaseDate,
    required String? originalLanguage,
    required String? backdropPath,
    required String? posterPath,
    required String? overview,
    required double? popularity,
    required String? mediaType,
    required DateTime createdAt,
  }) = _CacheMovieModel;


  factory CacheMovieModel.fromJson(Map<String, dynamic> json) =>
      _$CacheMovieModelFromJson(json);

  factory CacheMovieModel.convertFromMovie(Movie movie) {
    return CacheMovieModel(
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
        createdAt: DateTime.now()
    );
  }
}