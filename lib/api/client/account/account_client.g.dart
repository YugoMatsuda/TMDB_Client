// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _AccountClient implements AccountClient {
  _AccountClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.themoviedb.org/3//account';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Account> getAccount(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session_id': sessionId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Account>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Account.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieResult> getFavorites(id, sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session_id': sessionId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResult>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/${id}/favorite/movies',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> addFavorite(id, sessionId, params) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session_id': sessionId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/${id}/favorite',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
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
