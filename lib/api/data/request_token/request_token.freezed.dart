// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestToken _$RequestTokenFromJson(Map<String, dynamic> json) {
  return _RequestToken.fromJson(json);
}

/// @nodoc
class _$RequestTokenTearOff {
  const _$RequestTokenTearOff();

  _RequestToken call(
      {required bool success,
      required String? request_token,
      required String? expires_at}) {
    return _RequestToken(
      success: success,
      request_token: request_token,
      expires_at: expires_at,
    );
  }

  RequestToken fromJson(Map<String, Object?> json) {
    return RequestToken.fromJson(json);
  }
}

/// @nodoc
const $RequestToken = _$RequestTokenTearOff();

/// @nodoc
mixin _$RequestToken {
  bool get success => throw _privateConstructorUsedError;
  String? get request_token => throw _privateConstructorUsedError;
  String? get expires_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestTokenCopyWith<RequestToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTokenCopyWith<$Res> {
  factory $RequestTokenCopyWith(
          RequestToken value, $Res Function(RequestToken) then) =
      _$RequestTokenCopyWithImpl<$Res>;
  $Res call({bool success, String? request_token, String? expires_at});
}

/// @nodoc
class _$RequestTokenCopyWithImpl<$Res> implements $RequestTokenCopyWith<$Res> {
  _$RequestTokenCopyWithImpl(this._value, this._then);

  final RequestToken _value;
  // ignore: unused_field
  final $Res Function(RequestToken) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? request_token = freezed,
    Object? expires_at = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      request_token: request_token == freezed
          ? _value.request_token
          : request_token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires_at: expires_at == freezed
          ? _value.expires_at
          : expires_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RequestTokenCopyWith<$Res>
    implements $RequestTokenCopyWith<$Res> {
  factory _$RequestTokenCopyWith(
          _RequestToken value, $Res Function(_RequestToken) then) =
      __$RequestTokenCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String? request_token, String? expires_at});
}

/// @nodoc
class __$RequestTokenCopyWithImpl<$Res> extends _$RequestTokenCopyWithImpl<$Res>
    implements _$RequestTokenCopyWith<$Res> {
  __$RequestTokenCopyWithImpl(
      _RequestToken _value, $Res Function(_RequestToken) _then)
      : super(_value, (v) => _then(v as _RequestToken));

  @override
  _RequestToken get _value => super._value as _RequestToken;

  @override
  $Res call({
    Object? success = freezed,
    Object? request_token = freezed,
    Object? expires_at = freezed,
  }) {
    return _then(_RequestToken(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      request_token: request_token == freezed
          ? _value.request_token
          : request_token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires_at: expires_at == freezed
          ? _value.expires_at
          : expires_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestToken with DiagnosticableTreeMixin implements _RequestToken {
  const _$_RequestToken(
      {required this.success,
      required this.request_token,
      required this.expires_at});

  factory _$_RequestToken.fromJson(Map<String, dynamic> json) =>
      _$$_RequestTokenFromJson(json);

  @override
  final bool success;
  @override
  final String? request_token;
  @override
  final String? expires_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestToken(success: $success, request_token: $request_token, expires_at: $expires_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestToken'))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('request_token', request_token))
      ..add(DiagnosticsProperty('expires_at', expires_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestToken &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.request_token, request_token) &&
            const DeepCollectionEquality()
                .equals(other.expires_at, expires_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(request_token),
      const DeepCollectionEquality().hash(expires_at));

  @JsonKey(ignore: true)
  @override
  _$RequestTokenCopyWith<_RequestToken> get copyWith =>
      __$RequestTokenCopyWithImpl<_RequestToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestTokenToJson(this);
  }
}

abstract class _RequestToken implements RequestToken {
  const factory _RequestToken(
      {required bool success,
      required String? request_token,
      required String? expires_at}) = _$_RequestToken;

  factory _RequestToken.fromJson(Map<String, dynamic> json) =
      _$_RequestToken.fromJson;

  @override
  bool get success;
  @override
  String? get request_token;
  @override
  String? get expires_at;
  @override
  @JsonKey(ignore: true)
  _$RequestTokenCopyWith<_RequestToken> get copyWith =>
      throw _privateConstructorUsedError;
}
