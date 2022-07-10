// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _GenreClient implements GenreClient {
  _GenreClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.themoviedb.org/3//genre/movie/list';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GenreResult> getGenre() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GenreResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GenreResult.fromJson(_result.data!);
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
