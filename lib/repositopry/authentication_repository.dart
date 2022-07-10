import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/account/account.dart';
import 'package:movie_log_app/api/request_body/create_session_body.dart';
import 'package:movie_log_app/api/request_body/delete_session_body.dart';
import 'package:movie_log_app/datasourse/local_datasource/session_local_datasource.dart';
import '../api/data/request_token/request_token.dart';
import '../api/request_body/login_request_body.dart';
import '../datasourse/remote_datasource/authentication_remote_datasource.dart';

abstract class AuthenticationRepository {
  Future<void> loginAccount(String userName, String password);
  Future<void> logoutAccount();
}
final authenticationRepositoryProvider = Provider<AuthenticationRepository>((ref) {
  final remoteDataSource = ref.read(authenticationRemoteDataSourceProvider);
  final localDataSource = ref.read(sessionLocalDataSourceProvider);
  return AuthenticationRepositoryImpl(remoteDataSource, localDataSource);
});

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSource _authenticationRemoteDataSource;
  final SessionLocalDataSource _sessionLocalDataSource;

  AuthenticationRepositoryImpl(this._authenticationRemoteDataSource,this._sessionLocalDataSource);

  @override
  Future<void> loginAccount(String userName, String password) async {
    try {
      final requestToken = await _authenticationRemoteDataSource.getRequestToken();
      if (requestToken == null) {
        print('request_token is null');
        throw('request_token is invalid');
      }
      final loginRequestBody = LoginRequestBody(userName: userName, password: password, requestToken: requestToken);
      final validatedRequestToken = await _authenticationRemoteDataSource.validateWithLogin(loginRequestBody.toJson());
      if (validatedRequestToken == null) {
        print('validatedRequestToken is null');
        throw('validatedRequestToken is invalid');
      }
      final createSessionBody = CreateSessionBody(requestToken: validatedRequestToken);
      final sessionId = await _authenticationRemoteDataSource.createSession(createSessionBody.toJson());
      if (sessionId == null) {
        print('sessionId is null');
        throw('sessionId is invalid');
      }
      await _sessionLocalDataSource.saveSessionId(sessionId);
    } on SocketException catch(e) {
      print(e);
      throw(e.message);
    } on DioError catch (e) {
      throw(e.response?.data['status_message']);
    } catch(e) {
      print(e);
      throw(e.toString());
    }
  }

  @override
  Future<void> logoutAccount() async {
    try {
      final sessionId = await _sessionLocalDataSource.getSessionId();
      if (sessionId == null) {
        print('sessionId is null');
        throw('sessionId is invalid');
      }
      final requestBody = DeleteSessionBody(sessionId: sessionId);
      await _authenticationRemoteDataSource.deleteSession(requestBody.toJson());
      await _sessionLocalDataSource.deleteSessionId();
    } on SocketException catch(e) {
      print(e);
      throw(e.message);
    } on Exception catch(e) {
      print(e);
      throw(e.toString());
    }
  }
}