// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_keyword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchKeywordModel _$$_SearchKeywordModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchKeywordModel(
      keyword: json['keyword'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_SearchKeywordModelToJson(
        _$_SearchKeywordModel instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'createdAt': instance.createdAt.toIso8601String(),
    };
