import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@freezed
class GenreResult with _$GenreResult {
  const factory GenreResult({
    required List<Genre> genres,
  }) = _GenreResult;

  factory GenreResult.fromJson(Map<String, dynamic> json) =>
      _$GenreResultFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) =>
      _$GenreFromJson(json);
}