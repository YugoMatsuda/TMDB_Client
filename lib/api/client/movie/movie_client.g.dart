// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _MovieClient implements MovieClient {
  _MovieClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.themoviedb.org/3/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MovieResult> getNowPlaying(page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/movie/now_playing',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Credits> getCredits(movieId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Credits>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/movie/${movieId}/credits',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Credits.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VideoResult> getVideos(movieId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VideoResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/movie/${movieId}/videos',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VideoResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieResult> getTrending(
      {mediaType = "movie", timeWindow = "day"}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/movie/${mediaType}/${timeWindow}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieResult> getMovieByGenre(genreId, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'with_genres': genreId,
      r'page': page
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/discover/movie',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieResult> getMovieByKeyword(keyword) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': keyword};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/search/movie',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResult.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
