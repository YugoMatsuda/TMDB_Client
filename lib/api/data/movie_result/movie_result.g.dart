// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResult _$$_MovieResultFromJson(Map<String, dynamic> json) =>
    _$_MovieResult(
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieResultToJson(_$_MovieResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
