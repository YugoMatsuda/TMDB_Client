import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../etc/shared_preferences_key.dart';

abstract class SessionLocalDataSource {
  Future<void> deleteSessionId();
  Future<String?> getSessionId();
  Future<void> saveSessionId(String sessionId);
}

final sessionLocalDataSourceProvider = Provider<SessionLocalDataSource>((ref) {
  return SessionLocalDataSourceImpl();
});

class SessionLocalDataSourceImpl implements SessionLocalDataSource {
  @override
  Future<void> deleteSessionId() async {
    print('delete session - local');
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(SharedPreferencesKey.sessionId);
  }

  @override
  Future<String?> getSessionId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesKey.sessionId);
  }

  @override
  Future<void> saveSessionId(String sessionId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(SharedPreferencesKey.sessionId, sessionId);
  }
}
