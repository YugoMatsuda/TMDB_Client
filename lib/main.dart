import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/providers/authentication_state_provider.dart';
import 'package:movie_log_app/rooting/app_routes.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(color: Colors.white),
        cardTheme: CardTheme(color: Colors.white)
      ), // OS の設定がライトモードの時
      darkTheme: ThemeData(
        backgroundColor: Colors.black,
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(color: Color.fromRGBO(32, 32, 32, 1)),
          cardTheme: CardTheme(color: Colors.black)
      ), // OS の設定がダークモードの時
    );
  }
}