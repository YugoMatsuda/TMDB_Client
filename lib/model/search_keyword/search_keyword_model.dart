import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_keyword_model.freezed.dart';
part 'search_keyword_model.g.dart';

@freezed
class SearchKeywordModel with _$SearchKeywordModel {
  const factory SearchKeywordModel({
    required String keyword,
    required DateTime createdAt,
  }) = _SearchKeywordModel;


  factory SearchKeywordModel.fromJson(Map<String, dynamic> json) =>
      _$SearchKeywordModelFromJson(json);
}