import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../api/client/authentication/authentication_client.dart';

abstract class AuthenticationRemoteDataSource {
  Future<String?> getRequestToken();
  Future<String?> validateWithLogin(Map<String, dynamic> requestBody);
  Future<String?> createSession(Map<String, dynamic> requestBody);
  Future<void> deleteSession(Map<String, dynamic> requestBody);
}

final authenticationRemoteDataSourceProvider = Provider<AuthenticationRemoteDataSource>((ref) {
  final client = ref.read(authenticationClientProvider);
  return AuthenticationRemoteDataSourceImpl(client);
});

class AuthenticationRemoteDataSourceImpl implements AuthenticationRemoteDataSource {
  final AuthenticationClient _client;

  AuthenticationRemoteDataSourceImpl(this._client);

  @override
  Future<String?> getRequestToken() async {
    final response = await _client.createRequestToken();
    print(response);
    return response.request_token;
  }

  @override
  Future<String?> createSession(Map<String, dynamic> requestBody) async {
    final response = await _client.createSession(requestBody);
    print(response);
    return response.session_id;
  }

  @override
  Future<void> deleteSession(Map<String, dynamic> requestBody) async {
    final response = await _client.deleteSession(requestBody);
    print(response);
  }

  @override
  Future<String?> validateWithLogin(Map<String, dynamic> requestBody) async {
    try {
      final response = await _client.validateWithLogin(requestBody);
      print(response);
      return response.request_token;
    } on Exception catch (e){
      print("validateWithLogin");
      print(e.toString());
      throw(e);
    }
  }
}
