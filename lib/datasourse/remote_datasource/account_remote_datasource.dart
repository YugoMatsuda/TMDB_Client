import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/client/account/account_client.dart';
import 'package:movie_log_app/api/data/account/account.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';

abstract class AccountRemoteDataSource {
  Future<Account> getAccount(String sessionId);
  Future<MovieResult> getFavorites({required int accountId, required String sessionId});
  Future<void> addFavorite({required int accountId, required String sessionId, required Map<String, dynamic> requestBody});
}

final accountRemoteDataSourceProvider = Provider<AccountRemoteDataSource>((ref) {
  final client = ref.read(accountClientProvider);
  return AccountRemoteDataSourceImpl(client);
});

class AccountRemoteDataSourceImpl implements AccountRemoteDataSource {
  final AccountClient _client;

  AccountRemoteDataSourceImpl(this._client);

  @override
  Future<Account> getAccount(String sessionId)async {
    final response = await _client.getAccount(sessionId);
    print(response);
    return response;
  }

  @override
  Future<MovieResult> getFavorites({required int accountId, required String sessionId}) async {
    final response = await _client.getFavorites(accountId, sessionId);
    print(response);
    return response;
  }

  @override
  Future<void> addFavorite({required int accountId, required String sessionId, required Map<String, dynamic> requestBody}) async {
    await _client.addFavorite(accountId, sessionId, requestBody);;
  }
}