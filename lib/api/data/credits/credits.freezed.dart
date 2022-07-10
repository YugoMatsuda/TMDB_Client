// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Credits _$CreditsFromJson(Map<String, dynamic> json) {
  return _Credits.fromJson(json);
}

/// @nodoc
class _$CreditsTearOff {
  const _$CreditsTearOff();

  _Credits call({required int? id, required List<Cast>? cast}) {
    return _Credits(
      id: id,
      cast: cast,
    );
  }

  Credits fromJson(Map<String, Object?> json) {
    return Credits.fromJson(json);
  }
}

/// @nodoc
const $Credits = _$CreditsTearOff();

/// @nodoc
mixin _$Credits {
  int? get id => throw _privateConstructorUsedError;
  List<Cast>? get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsCopyWith<Credits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsCopyWith<$Res> {
  factory $CreditsCopyWith(Credits value, $Res Function(Credits) then) =
      _$CreditsCopyWithImpl<$Res>;
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class _$CreditsCopyWithImpl<$Res> implements $CreditsCopyWith<$Res> {
  _$CreditsCopyWithImpl(this._value, this._then);

  final Credits _value;
  // ignore: unused_field
  final $Res Function(Credits) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
abstract class _$CreditsCopyWith<$Res> implements $CreditsCopyWith<$Res> {
  factory _$CreditsCopyWith(_Credits value, $Res Function(_Credits) then) =
      __$CreditsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class __$CreditsCopyWithImpl<$Res> extends _$CreditsCopyWithImpl<$Res>
    implements _$CreditsCopyWith<$Res> {
  __$CreditsCopyWithImpl(_Credits _value, $Res Function(_Credits) _then)
      : super(_value, (v) => _then(v as _Credits));

  @override
  _Credits get _value => super._value as _Credits;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_Credits(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Credits with DiagnosticableTreeMixin implements _Credits {
  const _$_Credits({required this.id, required this.cast});

  factory _$_Credits.fromJson(Map<String, dynamic> json) =>
      _$$_CreditsFromJson(json);

  @override
  final int? id;
  @override
  final List<Cast>? cast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Credits(id: $id, cast: $cast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Credits'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('cast', cast));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Credits &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cast, cast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cast));

  @JsonKey(ignore: true)
  @override
  _$CreditsCopyWith<_Credits> get copyWith =>
      __$CreditsCopyWithImpl<_Credits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditsToJson(this);
  }
}

abstract class _Credits implements Credits {
  const factory _Credits({required int? id, required List<Cast>? cast}) =
      _$_Credits;

  factory _Credits.fromJson(Map<String, dynamic> json) = _$_Credits.fromJson;

  @override
  int? get id;
  @override
  List<Cast>? get cast;
  @override
  @JsonKey(ignore: true)
  _$CreditsCopyWith<_Credits> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
class _$CastTearOff {
  const _$CastTearOff();

  _Cast call(
      {required int? id,
      required int? castId,
      required String character,
      required String name,
      required String? profilePath,
      int? order}) {
    return _Cast(
      id: id,
      castId: castId,
      character: character,
      name: name,
      profilePath: profilePath,
      order: order,
    );
  }

  Cast fromJson(Map<String, Object?> json) {
    return Cast.fromJson(json);
  }
}

/// @nodoc
const $Cast = _$CastTearOff();

/// @nodoc
mixin _$Cast {
  int? get id => throw _privateConstructorUsedError;
  int? get castId => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get profilePath => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? castId,
      String character,
      String name,
      String? profilePath,
      int? order});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      castId: castId == freezed
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? castId,
      String character,
      String name,
      String? profilePath,
      int? order});
}

/// @nodoc
class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object? id = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? name = freezed,
    Object? profilePath = freezed,
    Object? order = freezed,
  }) {
    return _then(_Cast(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      castId: castId == freezed
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Cast with DiagnosticableTreeMixin implements _Cast {
  const _$_Cast(
      {required this.id,
      required this.castId,
      required this.character,
      required this.name,
      required this.profilePath,
      this.order});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final int? id;
  @override
  final int? castId;
  @override
  final String character;
  @override
  final String name;
  @override
  final String? profilePath;
  @override
  final int? order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cast(id: $id, castId: $castId, character: $character, name: $name, profilePath: $profilePath, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cast'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('castId', castId))
      ..add(DiagnosticsProperty('character', character))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profilePath', profilePath))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cast &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.castId, castId) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(castId),
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(profilePath),
      const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(this);
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {required int? id,
      required int? castId,
      required String character,
      required String name,
      required String? profilePath,
      int? order}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  int? get id;
  @override
  int? get castId;
  @override
  String get character;
  @override
  String get name;
  @override
  String? get profilePath;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$CastCopyWith<_Cast> get copyWith => throw _privateConstructorUsedError;
}
