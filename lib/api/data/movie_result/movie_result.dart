import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_log_app/api/data/movie/movie.dart';

part 'movie_result.freezed.dart';
part 'movie_result.g.dart';

@freezed
class MovieResult with _$MovieResult {
  const factory MovieResult({
    required List<Movie> results,
  }) = _MovieResult;

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);
}