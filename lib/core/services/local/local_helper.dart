import 'package:shared_preferences/shared_preferences.dart';

import 'app_shared_keys.dart';

class LocalHelper {
  const LocalHelper(this._pref);

  final SharedPreferences _pref;
  Future<bool> setValue<T>({
    required AppSharedKey key,
    required T value,
  }) async {
    final keyString = _getKeyString(key);
    switch (T) {
      case const (String):
        return _pref.setString(keyString, value as String);
      case const (bool):
        return _pref.setBool(keyString, value as bool);
      case const (int):
        return _pref.setInt(keyString, value as int);
      case const (double):
        return _pref.setDouble(keyString, value as double);
      case const (List<String>):
        return _pref.setStringList(keyString, value as List<String>);
      default:
        return false;
    }
  }

  dynamic getValue({required AppSharedKey key}) {
    return _pref.get(_getKeyString(key));
  }

  Future<bool> removeValue({required AppSharedKey key}) async {
    return _pref.remove(_getKeyString(key));
  }

  Future<bool> clearAll() async {
    return _pref.clear();
  }

  bool exists({required AppSharedKey key}) {
    return _pref.containsKey(_getKeyString(key));
  }

  String _getKeyString(AppSharedKey key) => key.toString().split('.').last;
}
