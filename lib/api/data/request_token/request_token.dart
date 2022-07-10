import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'request_token.freezed.dart';
part 'request_token.g.dart';

@freezed
class RequestToken with _$RequestToken {
  const factory RequestToken({
    required bool success,
    required String? request_token,
    required String? expires_at,

  }) = _RequestToken;

  factory RequestToken.fromJson(Map<String, dynamic> json) =>
      _$RequestTokenFromJson(json);
}