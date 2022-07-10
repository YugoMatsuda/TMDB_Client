import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import '../api/data/account/account.dart';
import '../datasourse/remote_datasource/account_remote_datasource.dart';
import '../datasourse/local_datasource/session_local_datasource.dart';

abstract class AccountRepository {
  Future<Account?> getAccount();
  Future<MovieResult> getFavorites(int accountId);
  Future<void> addFavorite({required int accountId, required Map<String, dynamic> requestBody});
}

final accountRepositoryProvider = Provider<AccountRepository>((ref) {
  final remoteDataSource = ref.read(accountRemoteDataSourceProvider);
  final localDataSource = ref.read(sessionLocalDataSourceProvider);
  return AccountRepositoryImpl(remoteDataSource, localDataSource);
});

class AccountRepositoryImpl implements AccountRepository {
  final AccountRemoteDataSource _accountRemoteDataSource;
  final SessionLocalDataSource _sessionLocalDataSource;

  AccountRepositoryImpl(this._accountRemoteDataSource,
      this._sessionLocalDataSource);

  @override
  Future<Account?> getAccount() async {
    try {
      final sessionId = await _sessionLocalDataSource.getSessionId();
      if (sessionId == null) {
        print('sessionId is null');
        return null;
      }
      final account = await _accountRemoteDataSource.getAccount(sessionId);
      return account;
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
  Future<MovieResult> getFavorites(int accountId) async {
    try {
      final sessionId = await _sessionLocalDataSource.getSessionId();
      if (sessionId == null) {
        print('sessionId is null');
        throw('sessionId is null');
      }
      final favorites = await _accountRemoteDataSource.getFavorites(accountId: accountId, sessionId: sessionId);
      return favorites;
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
  Future<void> addFavorite({required int accountId, required Map<String, dynamic> requestBody}) async {
    try {
      final sessionId = await _sessionLocalDataSource.getSessionId();
      if (sessionId == null) {
        print('sessionId is null');
        throw('sessionId is null');
      }
      await _accountRemoteDataSource.addFavorite(accountId: accountId, sessionId: sessionId, requestBody: requestBody);
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
}