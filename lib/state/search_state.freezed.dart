// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {MovieResult searchResult = const MovieResult(results: []),
      required GenreResult genreResult,
      required List<SearchKeywordModel> searchKeywords,
      required List<CacheMovieModel> cachedMovies}) {
    return _SearchState(
      searchResult: searchResult,
      genreResult: genreResult,
      searchKeywords: searchKeywords,
      cachedMovies: cachedMovies,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  MovieResult get searchResult => throw _privateConstructorUsedError;
  GenreResult get genreResult => throw _privateConstructorUsedError;
  List<SearchKeywordModel> get searchKeywords =>
      throw _privateConstructorUsedError;
  List<CacheMovieModel> get cachedMovies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {MovieResult searchResult,
      GenreResult genreResult,
      List<SearchKeywordModel> searchKeywords,
      List<CacheMovieModel> cachedMovies});

  $MovieResultCopyWith<$Res> get searchResult;
  $GenreResultCopyWith<$Res> get genreResult;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchResult = freezed,
    Object? genreResult = freezed,
    Object? searchKeywords = freezed,
    Object? cachedMovies = freezed,
  }) {
    return _then(_value.copyWith(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as MovieResult,
      genreResult: genreResult == freezed
          ? _value.genreResult
          : genreResult // ignore: cast_nullable_to_non_nullable
              as GenreResult,
      searchKeywords: searchKeywords == freezed
          ? _value.searchKeywords
          : searchKeywords // ignore: cast_nullable_to_non_nullable
              as List<SearchKeywordModel>,
      cachedMovies: cachedMovies == freezed
          ? _value.cachedMovies
          : cachedMovies // ignore: cast_nullable_to_non_nullable
              as List<CacheMovieModel>,
    ));
  }

  @override
  $MovieResultCopyWith<$Res> get searchResult {
    return $MovieResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }

  @override
  $GenreResultCopyWith<$Res> get genreResult {
    return $GenreResultCopyWith<$Res>(_value.genreResult, (value) {
      return _then(_value.copyWith(genreResult: value));
    });
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MovieResult searchResult,
      GenreResult genreResult,
      List<SearchKeywordModel> searchKeywords,
      List<CacheMovieModel> cachedMovies});

  @override
  $MovieResultCopyWith<$Res> get searchResult;
  @override
  $GenreResultCopyWith<$Res> get genreResult;
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? searchResult = freezed,
    Object? genreResult = freezed,
    Object? searchKeywords = freezed,
    Object? cachedMovies = freezed,
  }) {
    return _then(_SearchState(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as MovieResult,
      genreResult: genreResult == freezed
          ? _value.genreResult
          : genreResult // ignore: cast_nullable_to_non_nullable
              as GenreResult,
      searchKeywords: searchKeywords == freezed
          ? _value.searchKeywords
          : searchKeywords // ignore: cast_nullable_to_non_nullable
              as List<SearchKeywordModel>,
      cachedMovies: cachedMovies == freezed
          ? _value.cachedMovies
          : cachedMovies // ignore: cast_nullable_to_non_nullable
              as List<CacheMovieModel>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {this.searchResult = const MovieResult(results: []),
      required this.genreResult,
      required this.searchKeywords,
      required this.cachedMovies});

  @JsonKey()
  @override
  final MovieResult searchResult;
  @override
  final GenreResult genreResult;
  @override
  final List<SearchKeywordModel> searchKeywords;
  @override
  final List<CacheMovieModel> cachedMovies;

  @override
  String toString() {
    return 'SearchState(searchResult: $searchResult, genreResult: $genreResult, searchKeywords: $searchKeywords, cachedMovies: $cachedMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality()
                .equals(other.searchResult, searchResult) &&
            const DeepCollectionEquality()
                .equals(other.genreResult, genreResult) &&
            const DeepCollectionEquality()
                .equals(other.searchKeywords, searchKeywords) &&
            const DeepCollectionEquality()
                .equals(other.cachedMovies, cachedMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchResult),
      const DeepCollectionEquality().hash(genreResult),
      const DeepCollectionEquality().hash(searchKeywords),
      const DeepCollectionEquality().hash(cachedMovies));

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {MovieResult searchResult,
      required GenreResult genreResult,
      required List<SearchKeywordModel> searchKeywords,
      required List<CacheMovieModel> cachedMovies}) = _$_SearchState;

  @override
  MovieResult get searchResult;
  @override
  GenreResult get genreResult;
  @override
  List<SearchKeywordModel> get searchKeywords;
  @override
  List<CacheMovieModel> get cachedMovies;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
