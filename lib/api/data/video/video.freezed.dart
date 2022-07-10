// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoResult _$VideoResultFromJson(Map<String, dynamic> json) {
  return _VideoResult.fromJson(json);
}

/// @nodoc
class _$VideoResultTearOff {
  const _$VideoResultTearOff();

  _VideoResult call({required int id, required List<Video> results}) {
    return _VideoResult(
      id: id,
      results: results,
    );
  }

  VideoResult fromJson(Map<String, Object?> json) {
    return VideoResult.fromJson(json);
  }
}

/// @nodoc
const $VideoResult = _$VideoResultTearOff();

/// @nodoc
mixin _$VideoResult {
  int get id => throw _privateConstructorUsedError;
  List<Video> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResultCopyWith<VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultCopyWith<$Res> {
  factory $VideoResultCopyWith(
          VideoResult value, $Res Function(VideoResult) then) =
      _$VideoResultCopyWithImpl<$Res>;
  $Res call({int id, List<Video> results});
}

/// @nodoc
class _$VideoResultCopyWithImpl<$Res> implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._value, this._then);

  final VideoResult _value;
  // ignore: unused_field
  final $Res Function(VideoResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc
abstract class _$VideoResultCopyWith<$Res>
    implements $VideoResultCopyWith<$Res> {
  factory _$VideoResultCopyWith(
          _VideoResult value, $Res Function(_VideoResult) then) =
      __$VideoResultCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<Video> results});
}

/// @nodoc
class __$VideoResultCopyWithImpl<$Res> extends _$VideoResultCopyWithImpl<$Res>
    implements _$VideoResultCopyWith<$Res> {
  __$VideoResultCopyWithImpl(
      _VideoResult _value, $Res Function(_VideoResult) _then)
      : super(_value, (v) => _then(v as _VideoResult));

  @override
  _VideoResult get _value => super._value as _VideoResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_VideoResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResult with DiagnosticableTreeMixin implements _VideoResult {
  const _$_VideoResult({required this.id, required this.results});

  factory _$_VideoResult.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResultFromJson(json);

  @override
  final int id;
  @override
  final List<Video> results;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoResult(id: $id, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoResult'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$VideoResultCopyWith<_VideoResult> get copyWith =>
      __$VideoResultCopyWithImpl<_VideoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResultToJson(this);
  }
}

abstract class _VideoResult implements VideoResult {
  const factory _VideoResult({required int id, required List<Video> results}) =
      _$_VideoResult;

  factory _VideoResult.fromJson(Map<String, dynamic> json) =
      _$_VideoResult.fromJson;

  @override
  int get id;
  @override
  List<Video> get results;
  @override
  @JsonKey(ignore: true)
  _$VideoResultCopyWith<_VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
class _$VideoTearOff {
  const _$VideoTearOff();

  _Video call(
      {required String name, required String key, required String site}) {
    return _Video(
      name: name,
      key: key,
      site: site,
    );
  }

  Video fromJson(Map<String, Object?> json) {
    return Video.fromJson(json);
  }
}

/// @nodoc
const $Video = _$VideoTearOff();

/// @nodoc
mixin _$Video {
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res>;
  $Res call({String name, String key, String site});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res> implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  final Video _value;
  // ignore: unused_field
  final $Res Function(Video) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String key, String site});
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(_Video _value, $Res Function(_Video) _then)
      : super(_value, (v) => _then(v as _Video));

  @override
  _Video get _value => super._value as _Video;

  @override
  $Res call({
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
  }) {
    return _then(_Video(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Video with DiagnosticableTreeMixin implements _Video {
  const _$_Video({required this.name, required this.key, required this.site});

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFromJson(json);

  @override
  final String name;
  @override
  final String key;
  @override
  final String site;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Video(name: $name, key: $key, site: $site)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Video'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('site', site));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Video &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.site, site));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(site));

  @JsonKey(ignore: true)
  @override
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoToJson(this);
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {required String name,
      required String key,
      required String site}) = _$_Video;

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  String get name;
  @override
  String get key;
  @override
  String get site;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
