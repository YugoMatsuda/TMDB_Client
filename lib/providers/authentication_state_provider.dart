import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/account/account.dart';
import 'package:movie_log_app/repositopry/account_repository.dart';
import 'package:movie_log_app/repositopry/authentication_repository.dart';

final authenticationStateProvider = StateNotifierProvider.autoDispose<AuthenticationStateNotifier, Account?>((ref) {
  final AuthenticationRepository authRepository = ref.read(authenticationRepositoryProvider);
  final AccountRepository accountRepository = ref.read(accountRepositoryProvider);
  return AuthenticationStateNotifier(authRepository, accountRepository);
});

class AuthenticationStateNotifier extends StateNotifier<Account?> {
  final AuthenticationRepository authRepository;
  final AccountRepository accountRepository;
  AuthenticationStateNotifier(this.authRepository, this.accountRepository)
      : super(null) {
    getCurrentAccount();
  }

  Future<void> getCurrentAccount() async{
    try {
      final account = await accountRepository.getAccount();
      state = account;
    } catch(e) {
      print(e.toString());
      state = null;
    }
  }

  Future<void> loginAccount(String userName, String password) async{
    try {
      await authRepository.loginAccount(userName, password);
      final account = await accountRepository.getAccount();
      state = account;
    } catch(e) {
      state = null;
      rethrow;
    }
  }

  Future<void> logout() async{
    try {
      await authRepository.logoutAccount();
      state = null;
    } catch(e) {
      print(e.toString());
    }
  }

  bool isLogin() {
    return state != null;
  }


  void reAuth(){
    state = null;
  }
}
