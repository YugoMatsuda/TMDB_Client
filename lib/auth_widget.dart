import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/providers/authentication_state_provider.dart';
import 'package:movie_log_app/screen/account_screen.dart';
import 'package:movie_log_app/screen/login_screen.dart';

class AuthWidget extends ConsumerWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authenticationStateProvider);
    final authState = ref.watch(authenticationStateProvider.notifier);
    return authState.isLogin() ? const AccountScreen() : const LoginScreen();
  }
}