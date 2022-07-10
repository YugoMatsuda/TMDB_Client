// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
class _$SessionTearOff {
  const _$SessionTearOff();

  _Session call({required bool? success, required String? session_id}) {
    return _Session(
      success: success,
      session_id: session_id,
    );
  }

  Session fromJson(Map<String, Object?> json) {
    return Session.fromJson(json);
  }
}

/// @nodoc
const $Session = _$SessionTearOff();

/// @nodoc
mixin _$Session {
  bool? get success => throw _privateConstructorUsedError;
  String? get session_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res>;
  $Res call({bool? success, String? session_id});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res> implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  final Session _value;
  // ignore: unused_field
  final $Res Function(Session) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? session_id = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      session_id: session_id == freezed
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) then) =
      __$SessionCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, String? session_id});
}

/// @nodoc
class __$SessionCopyWithImpl<$Res> extends _$SessionCopyWithImpl<$Res>
    implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(_Session _value, $Res Function(_Session) _then)
      : super(_value, (v) => _then(v as _Session));

  @override
  _Session get _value => super._value as _Session;

  @override
  $Res call({
    Object? success = freezed,
    Object? session_id = freezed,
  }) {
    return _then(_Session(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      session_id: session_id == freezed
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Session with DiagnosticableTreeMixin implements _Session {
  const _$_Session({required this.success, required this.session_id});

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  final bool? success;
  @override
  final String? session_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session(success: $success, session_id: $session_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session'))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('session_id', session_id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Session &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.session_id, session_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(session_id));

  @JsonKey(ignore: true)
  @override
  _$SessionCopyWith<_Session> get copyWith =>
      __$SessionCopyWithImpl<_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(this);
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {required bool? success, required String? session_id}) = _$_Session;

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  bool? get success;
  @override
  String? get session_id;
  @override
  @JsonKey(ignore: true)
  _$SessionCopyWith<_Session> get copyWith =>
      throw _privateConstructorUsedError;
}
