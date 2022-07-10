// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {required int id,
      required String title,
      required String? originalTitle,
      required int? voteCount,
      required double? voteAverage,
      required String? releaseDate,
      required String? originalLanguage,
      required List<int>? genreIds,
      required String? backdropPath,
      required String? posterPath,
      required String? overview,
      required double? popularity,
      required String? mediaType}) {
    return _Movie(
      id: id,
      title: title,
      originalTitle: originalTitle,
      voteCount: voteCount,
      voteAverage: voteAverage,
      releaseDate: releaseDate,
      originalLanguage: originalLanguage,
      genreIds: genreIds,
      backdropPath: backdropPath,
      posterPath: posterPath,
      overview: overview,
      popularity: popularity,
      mediaType: mediaType,
    );
  }

  Movie fromJson(Map<String, Object?> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get originalTitle => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;
  double? get voteAverage => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  List<int>? get genreIds => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get mediaType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String? originalTitle,
      int? voteCount,
      double? voteAverage,
      String? releaseDate,
      String? originalLanguage,
      List<int>? genreIds,
      String? backdropPath,
      String? posterPath,
      String? overview,
      double? popularity,
      String? mediaType});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? voteCount = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String? originalTitle,
      int? voteCount,
      double? voteAverage,
      String? releaseDate,
      String? originalLanguage,
      List<int>? genreIds,
      String? backdropPath,
      String? posterPath,
      String? overview,
      double? popularity,
      String? mediaType});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? voteCount = freezed,
    Object? voteAverage = freezed,
    Object? releaseDate = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Movie with DiagnosticableTreeMixin implements _Movie {
  const _$_Movie(
      {required this.id,
      required this.title,
      required this.originalTitle,
      required this.voteCount,
      required this.voteAverage,
      required this.releaseDate,
      required this.originalLanguage,
      required this.genreIds,
      required this.backdropPath,
      required this.posterPath,
      required this.overview,
      required this.popularity,
      required this.mediaType});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? originalTitle;
  @override
  final int? voteCount;
  @override
  final double? voteAverage;
  @override
  final String? releaseDate;
  @override
  final String? originalLanguage;
  @override
  final List<int>? genreIds;
  @override
  final String? backdropPath;
  @override
  final String? posterPath;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  final String? mediaType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Movie(id: $id, title: $title, originalTitle: $originalTitle, voteCount: $voteCount, voteAverage: $voteAverage, releaseDate: $releaseDate, originalLanguage: $originalLanguage, genreIds: $genreIds, backdropPath: $backdropPath, posterPath: $posterPath, overview: $overview, popularity: $popularity, mediaType: $mediaType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Movie'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('originalTitle', originalTitle))
      ..add(DiagnosticsProperty('voteCount', voteCount))
      ..add(DiagnosticsProperty('voteAverage', voteAverage))
      ..add(DiagnosticsProperty('releaseDate', releaseDate))
      ..add(DiagnosticsProperty('originalLanguage', originalLanguage))
      ..add(DiagnosticsProperty('genreIds', genreIds))
      ..add(DiagnosticsProperty('backdropPath', backdropPath))
      ..add(DiagnosticsProperty('posterPath', posterPath))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('popularity', popularity))
      ..add(DiagnosticsProperty('mediaType', mediaType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
            const DeepCollectionEquality().equals(other.genreIds, genreIds) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.mediaType, mediaType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(originalLanguage),
      const DeepCollectionEquality().hash(genreIds),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(mediaType));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required int id,
      required String title,
      required String? originalTitle,
      required int? voteCount,
      required double? voteAverage,
      required String? releaseDate,
      required String? originalLanguage,
      required List<int>? genreIds,
      required String? backdropPath,
      required String? posterPath,
      required String? overview,
      required double? popularity,
      required String? mediaType}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get originalTitle;
  @override
  int? get voteCount;
  @override
  double? get voteAverage;
  @override
  String? get releaseDate;
  @override
  String? get originalLanguage;
  @override
  List<int>? get genreIds;
  @override
  String? get backdropPath;
  @override
  String? get posterPath;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  String? get mediaType;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}
