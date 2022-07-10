// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_keyword_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchKeywordModel _$SearchKeywordModelFromJson(Map<String, dynamic> json) {
  return _SearchKeywordModel.fromJson(json);
}

/// @nodoc
class _$SearchKeywordModelTearOff {
  const _$SearchKeywordModelTearOff();

  _SearchKeywordModel call(
      {required String keyword, required DateTime createdAt}) {
    return _SearchKeywordModel(
      keyword: keyword,
      createdAt: createdAt,
    );
  }

  SearchKeywordModel fromJson(Map<String, Object?> json) {
    return SearchKeywordModel.fromJson(json);
  }
}

/// @nodoc
const $SearchKeywordModel = _$SearchKeywordModelTearOff();

/// @nodoc
mixin _$SearchKeywordModel {
  String get keyword => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchKeywordModelCopyWith<SearchKeywordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchKeywordModelCopyWith<$Res> {
  factory $SearchKeywordModelCopyWith(
          SearchKeywordModel value, $Res Function(SearchKeywordModel) then) =
      _$SearchKeywordModelCopyWithImpl<$Res>;
  $Res call({String keyword, DateTime createdAt});
}

/// @nodoc
class _$SearchKeywordModelCopyWithImpl<$Res>
    implements $SearchKeywordModelCopyWith<$Res> {
  _$SearchKeywordModelCopyWithImpl(this._value, this._then);

  final SearchKeywordModel _value;
  // ignore: unused_field
  final $Res Function(SearchKeywordModel) _then;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$SearchKeywordModelCopyWith<$Res>
    implements $SearchKeywordModelCopyWith<$Res> {
  factory _$SearchKeywordModelCopyWith(
          _SearchKeywordModel value, $Res Function(_SearchKeywordModel) then) =
      __$SearchKeywordModelCopyWithImpl<$Res>;
  @override
  $Res call({String keyword, DateTime createdAt});
}

/// @nodoc
class __$SearchKeywordModelCopyWithImpl<$Res>
    extends _$SearchKeywordModelCopyWithImpl<$Res>
    implements _$SearchKeywordModelCopyWith<$Res> {
  __$SearchKeywordModelCopyWithImpl(
      _SearchKeywordModel _value, $Res Function(_SearchKeywordModel) _then)
      : super(_value, (v) => _then(v as _SearchKeywordModel));

  @override
  _SearchKeywordModel get _value => super._value as _SearchKeywordModel;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_SearchKeywordModel(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchKeywordModel
    with DiagnosticableTreeMixin
    implements _SearchKeywordModel {
  const _$_SearchKeywordModel({required this.keyword, required this.createdAt});

  factory _$_SearchKeywordModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchKeywordModelFromJson(json);

  @override
  final String keyword;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchKeywordModel(keyword: $keyword, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchKeywordModel'))
      ..add(DiagnosticsProperty('keyword', keyword))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchKeywordModel &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$SearchKeywordModelCopyWith<_SearchKeywordModel> get copyWith =>
      __$SearchKeywordModelCopyWithImpl<_SearchKeywordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchKeywordModelToJson(this);
  }
}

abstract class _SearchKeywordModel implements SearchKeywordModel {
  const factory _SearchKeywordModel(
      {required String keyword,
      required DateTime createdAt}) = _$_SearchKeywordModel;

  factory _SearchKeywordModel.fromJson(Map<String, dynamic> json) =
      _$_SearchKeywordModel.fromJson;

  @override
  String get keyword;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$SearchKeywordModelCopyWith<_SearchKeywordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
