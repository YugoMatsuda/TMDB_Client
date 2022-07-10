// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Credits _$$_CreditsFromJson(Map<String, dynamic> json) => _$_Credits(
      id: json['id'] as int?,
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreditsToJson(_$_Credits instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      id: json['id'] as int?,
      castId: json['cast_id'] as int?,
      character: json['character'] as String,
      name: json['name'] as String,
      profilePath: json['profile_path'] as String?,
      order: json['order'] as int?,
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'id': instance.id,
      'cast_id': instance.castId,
      'character': instance.character,
      'name': instance.name,
      'profile_path': instance.profilePath,
      'order': instance.order,
    };
