import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/session/session.dart';
import '../../api_constants.dart';
import '../../data/request_token/request_token.dart';
import 'package:retrofit/http.dart';
import '../dio.dart';

part 'authentication_client.g.dart';

final authenticationClientProvider = Provider<AuthenticationClient>((ref) {
  final dio = ref.read(dioProvider);
  return AuthenticationClient(dio);
});

@RestApi(baseUrl: BASE_URL)
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) = _AuthenticationClient;

  @GET("/authentication/token/new")
  Future<RequestToken> createRequestToken();

  @POST("/authentication/token/validate_with_login")
  Future<RequestToken> validateWithLogin(@Body() Map<String, dynamic> params);

  @POST("/authentication/session/new")
  Future<Session> createSession(@Body() Map<String, dynamic> params);

  @DELETE("/authentication/session")
  Future<Session> deleteSession(@Body() Map<String, dynamic> params);
}
