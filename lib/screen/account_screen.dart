import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/providers/authentication_state_provider.dart';
import 'package:settings_ui/settings_ui.dart';
import '../rooting/app_routes.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({Key? key}) : super(key: key);

  void _showSignOutDialog(BuildContext context, WidgetRef ref) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Are you sure you want to sign out？'),
          actions: [
            CupertinoDialogAction(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
                ref.read(authenticationStateProvider.notifier).logout();
              },
              isDestructiveAction: true,
            )
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authState = ref.read(authenticationStateProvider);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        middle: Text('Account', style: TextStyle(color: Theme.of(context).textTheme.bodyText1?.color)),
      ),
      child: SafeArea(
        child: Scaffold(
          body: SettingsList(
            sections: [
              SettingsSection(
                title: Text('Account'),
                tiles: <SettingsTile>[
                  SettingsTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(_authState?.username ?? ""),
                  ),
                ],
              ),
              SettingsSection(
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: Icon(Icons.star),
                    title: Text('Favorites'),
                    onPressed: (context) {
                      context.push(AppRoutes.favorites);
                    },
                  ),
                ],
              ),
              SettingsSection(
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: Icon(Icons.logout),
                    title: Text('Sign out'),
                    onPressed: (context) {
                      _showSignOutDialog(context, ref);
                    },
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

