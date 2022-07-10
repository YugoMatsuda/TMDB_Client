import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../api_constants.dart';

final dioProvider = Provider((ref) {
  final dio = Dio();
  dio.options.queryParameters['api_key'] = API_KEY;
  dio.options.headers['Content'] = 'application/json';
  return dio;
});
