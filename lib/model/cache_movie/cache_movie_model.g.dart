// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CacheMovieModel _$$_CacheMovieModelFromJson(Map<String, dynamic> json) =>
    _$_CacheMovieModel(
      id: json['id'] as int,
      title: json['title'] as String,
      originalTitle: json['originalTitle'] as String?,
      voteCount: json['voteCount'] as int?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      releaseDate: json['releaseDate'] as String?,
      originalLanguage: json['originalLanguage'] as String?,
      backdropPath: json['backdropPath'] as String?,
      posterPath: json['posterPath'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      mediaType: json['mediaType'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_CacheMovieModelToJson(_$_CacheMovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'voteCount': instance.voteCount,
      'voteAverage': instance.voteAverage,
      'releaseDate': instance.releaseDate,
      'originalLanguage': instance.originalLanguage,
      'backdropPath': instance.backdropPath,
      'posterPath': instance.posterPath,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'mediaType': instance.mediaType,
      'createdAt': instance.createdAt.toIso8601String(),
    };
