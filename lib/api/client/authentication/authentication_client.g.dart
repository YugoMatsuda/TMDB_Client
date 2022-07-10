// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _AuthenticationClient implements AuthenticationClient {
  _AuthenticationClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.themoviedb.org/3/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RequestToken> createRequestToken() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RequestToken>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/authentication/token/new',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RequestToken.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RequestToken> validateWithLogin(params) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RequestToken>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/authentication/token/validate_with_login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RequestToken.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Session> createSession(params) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Session>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/authentication/session/new',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Session.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Session> deleteSession(params) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Session>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, '/authentication/session',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Session.fromJson(_result.data!);
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
