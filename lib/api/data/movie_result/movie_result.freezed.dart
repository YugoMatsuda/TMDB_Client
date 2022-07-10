// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _MovieResult.fromJson(json);
}

/// @nodoc
class _$MovieResultTearOff {
  const _$MovieResultTearOff();

  _MovieResult call({required List<Movie> results}) {
    return _MovieResult(
      results: results,
    );
  }

  MovieResult fromJson(Map<String, Object?> json) {
    return MovieResult.fromJson(json);
  }
}

/// @nodoc
const $MovieResult = _$MovieResultTearOff();

/// @nodoc
mixin _$MovieResult {
  List<Movie> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResultCopyWith<MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultCopyWith<$Res> {
  factory $MovieResultCopyWith(
          MovieResult value, $Res Function(MovieResult) then) =
      _$MovieResultCopyWithImpl<$Res>;
  $Res call({List<Movie> results});
}

/// @nodoc
class _$MovieResultCopyWithImpl<$Res> implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._value, this._then);

  final MovieResult _value;
  // ignore: unused_field
  final $Res Function(MovieResult) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
abstract class _$MovieResultCopyWith<$Res>
    implements $MovieResultCopyWith<$Res> {
  factory _$MovieResultCopyWith(
          _MovieResult value, $Res Function(_MovieResult) then) =
      __$MovieResultCopyWithImpl<$Res>;
  @override
  $Res call({List<Movie> results});
}

/// @nodoc
class __$MovieResultCopyWithImpl<$Res> extends _$MovieResultCopyWithImpl<$Res>
    implements _$MovieResultCopyWith<$Res> {
  __$MovieResultCopyWithImpl(
      _MovieResult _value, $Res Function(_MovieResult) _then)
      : super(_value, (v) => _then(v as _MovieResult));

  @override
  _MovieResult get _value => super._value as _MovieResult;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_MovieResult(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieResult with DiagnosticableTreeMixin implements _MovieResult {
  const _$_MovieResult({required this.results});

  factory _$_MovieResult.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResultFromJson(json);

  @override
  final List<Movie> results;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieResult(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieResult'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieResult &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$MovieResultCopyWith<_MovieResult> get copyWith =>
      __$MovieResultCopyWithImpl<_MovieResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResultToJson(this);
  }
}

abstract class _MovieResult implements MovieResult {
  const factory _MovieResult({required List<Movie> results}) = _$_MovieResult;

  factory _MovieResult.fromJson(Map<String, dynamic> json) =
      _$_MovieResult.fromJson;

  @override
  List<Movie> get results;
  @override
  @JsonKey(ignore: true)
  _$MovieResultCopyWith<_MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}
