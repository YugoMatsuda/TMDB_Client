import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'credits.freezed.dart';
part 'credits.g.dart';

@freezed
class Credits with _$Credits {
  const factory Credits({
    required int? id,
    required List<Cast>? cast,
  }) = _Credits;

  factory Credits.fromJson(Map<String, dynamic> json) =>
      _$CreditsFromJson(json);
}

@freezed
class Cast with _$Cast {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Cast({
    required int? id,
    required int? castId,
    required String character,
    required String name,
    required String? profilePath,
    final int? order,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) =>
      _$CastFromJson(json);
}