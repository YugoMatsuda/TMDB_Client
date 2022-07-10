// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestToken _$$_RequestTokenFromJson(Map<String, dynamic> json) =>
    _$_RequestToken(
      success: json['success'] as bool,
      request_token: json['request_token'] as String?,
      expires_at: json['expires_at'] as String?,
    );

Map<String, dynamic> _$$_RequestTokenToJson(_$_RequestToken instance) =>
    <String, dynamic>{
      'success': instance.success,
      'request_token': instance.request_token,
      'expires_at': instance.expires_at,
    };
