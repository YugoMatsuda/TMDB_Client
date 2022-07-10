// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreResult _$GenreResultFromJson(Map<String, dynamic> json) {
  return _GenreResult.fromJson(json);
}

/// @nodoc
class _$GenreResultTearOff {
  const _$GenreResultTearOff();

  _GenreResult call({required List<Genre> genres}) {
    return _GenreResult(
      genres: genres,
    );
  }

  GenreResult fromJson(Map<String, Object?> json) {
    return GenreResult.fromJson(json);
  }
}

/// @nodoc
const $GenreResult = _$GenreResultTearOff();

/// @nodoc
mixin _$GenreResult {
  List<Genre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreResultCopyWith<GenreResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreResultCopyWith<$Res> {
  factory $GenreResultCopyWith(
          GenreResult value, $Res Function(GenreResult) then) =
      _$GenreResultCopyWithImpl<$Res>;
  $Res call({List<Genre> genres});
}

/// @nodoc
class _$GenreResultCopyWithImpl<$Res> implements $GenreResultCopyWith<$Res> {
  _$GenreResultCopyWithImpl(this._value, this._then);

  final GenreResult _value;
  // ignore: unused_field
  final $Res Function(GenreResult) _then;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
abstract class _$GenreResultCopyWith<$Res>
    implements $GenreResultCopyWith<$Res> {
  factory _$GenreResultCopyWith(
          _GenreResult value, $Res Function(_GenreResult) then) =
      __$GenreResultCopyWithImpl<$Res>;
  @override
  $Res call({List<Genre> genres});
}

/// @nodoc
class __$GenreResultCopyWithImpl<$Res> extends _$GenreResultCopyWithImpl<$Res>
    implements _$GenreResultCopyWith<$Res> {
  __$GenreResultCopyWithImpl(
      _GenreResult _value, $Res Function(_GenreResult) _then)
      : super(_value, (v) => _then(v as _GenreResult));

  @override
  _GenreResult get _value => super._value as _GenreResult;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_GenreResult(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreResult with DiagnosticableTreeMixin implements _GenreResult {
  const _$_GenreResult({required this.genres});

  factory _$_GenreResult.fromJson(Map<String, dynamic> json) =>
      _$$_GenreResultFromJson(json);

  @override
  final List<Genre> genres;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GenreResult(genres: $genres)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GenreResult'))
      ..add(DiagnosticsProperty('genres', genres));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenreResult &&
            const DeepCollectionEquality().equals(other.genres, genres));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genres));

  @JsonKey(ignore: true)
  @override
  _$GenreResultCopyWith<_GenreResult> get copyWith =>
      __$GenreResultCopyWithImpl<_GenreResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreResultToJson(this);
  }
}

abstract class _GenreResult implements GenreResult {
  const factory _GenreResult({required List<Genre> genres}) = _$_GenreResult;

  factory _GenreResult.fromJson(Map<String, dynamic> json) =
      _$_GenreResult.fromJson;

  @override
  List<Genre> get genres;
  @override
  @JsonKey(ignore: true)
  _$GenreResultCopyWith<_GenreResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
class _$GenreTearOff {
  const _$GenreTearOff();

  _Genre call({required int id, required String name}) {
    return _Genre(
      id: id,
      name: name,
    );
  }

  Genre fromJson(Map<String, Object?> json) {
    return Genre.fromJson(json);
  }
}

/// @nodoc
const $Genre = _$GenreTearOff();

/// @nodoc
mixin _$Genre {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res> implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  final Genre _value;
  // ignore: unused_field
  final $Res Function(Genre) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$GenreCopyWith(_Genre value, $Res Function(_Genre) then) =
      __$GenreCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$GenreCopyWithImpl<$Res> extends _$GenreCopyWithImpl<$Res>
    implements _$GenreCopyWith<$Res> {
  __$GenreCopyWithImpl(_Genre _value, $Res Function(_Genre) _then)
      : super(_value, (v) => _then(v as _Genre));

  @override
  _Genre get _value => super._value as _Genre;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Genre(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genre with DiagnosticableTreeMixin implements _Genre {
  const _$_Genre({required this.id, required this.name});

  factory _$_Genre.fromJson(Map<String, dynamic> json) =>
      _$$_GenreFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Genre(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Genre'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Genre &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenreCopyWith<_Genre> get copyWith =>
      __$GenreCopyWithImpl<_Genre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreToJson(this);
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({required int id, required String name}) = _$_Genre;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$_Genre.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenreCopyWith<_Genre> get copyWith => throw _privateConstructorUsedError;
}
