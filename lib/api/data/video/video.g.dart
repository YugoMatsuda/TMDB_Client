// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoResult _$$_VideoResultFromJson(Map<String, dynamic> json) =>
    _$_VideoResult(
      id: json['id'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VideoResultToJson(_$_VideoResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      name: json['name'] as String,
      key: json['key'] as String,
      site: json['site'] as String,
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
    };
