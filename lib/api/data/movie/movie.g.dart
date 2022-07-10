// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      originalTitle: json['original_title'] as String?,
      voteCount: json['vote_count'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
      originalLanguage: json['original_language'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      mediaType: json['media_type'] as String?,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'vote_count': instance.voteCount,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
      'original_language': instance.originalLanguage,
      'genre_ids': instance.genreIds,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'media_type': instance.mediaType,
    };
