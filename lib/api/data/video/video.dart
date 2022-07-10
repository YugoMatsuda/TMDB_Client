import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class VideoResult with _$VideoResult {
  const factory VideoResult({
    required int id,
    required List<Video> results,
  }) = _VideoResult;

  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}

@freezed
class Video with _$Video {
  const factory Video({
    required String name,
    required String key,
    required String site,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) =>
      _$VideoFromJson(json);
}