import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import 'app_shared_keys.dart';

class LocalHelper {
  const LocalHelper(this._pref);

  final SharedPreferences _pref;

  String _getKeyString(AppSharedKey key) {
    final keyString = key.toString().split('.').last;
    return keyString;
  }

  Future<bool> setValue({
    required AppSharedKey key,
    required dynamic value,
  }) async {
    log('Setting value for key: $key, value: $value', name: 'LocalHelper');
    try {
      final keyString = _getKeyString(key);
      bool result;
      if (value is String) {
        result = await _pref.setString(keyString, value);
      } else if (value is bool) {
        result = await _pref.setBool(keyString, value);
      } else if (value is int) {
        result = await _pref.setInt(keyString, value);
      } else if (value is double) {
        result = await _pref.setDouble(keyString, value);
      } else if (value is List<String>) {
        result = await _pref.setStringList(keyString, value);
      } else {
        log(
          'Unsupported type for key $keyString: ${value.runtimeType}',
          name: 'LocalHelper',
        );
        return false;
      }
      log(
        'Set value for $keyString: $value, success: $result',
        name: 'LocalHelper',
      );
      return result;
    } on Exception catch (e) {
      log('Failed to set value for $key: $e', name: 'LocalHelper');
      return false;
    }
  }

  dynamic getValue({required AppSharedKey key}) {
    final keyString = _getKeyString(key);
    final value = _pref.get(keyString);
    log('Retrieved value for $keyString: $value', name: 'LocalHelper');
    return value;
  }

  Future<bool> removeValue({required AppSharedKey key}) async {
    try {
      final keyString = _getKeyString(key);
      final result = await _pref.remove(keyString);
      log(
        'Removed value for $keyString, success: $result',
        name: 'LocalHelper',
      );
      return result;
    } on Exception catch (e) {
      log('Failed to remove value for $key: $e', name: 'LocalHelper');
      return false;
    }
  }

  Future<bool> clearAll() async {
    try {
      final result = await _pref.clear();
      log(
        'Cleared all shared preferences, success: $result',
        name: 'LocalHelper',
      );
      return result;
    } on Exception catch (e) {
      log('Failed to clear shared preferences: $e', name: 'LocalHelper');
      return false;
    }
  }

  bool exists({required AppSharedKey key}) {
    log('Checking if key exists: $key', name: 'LocalHelper');

    final keyString = _getKeyString(key);

    log('Key exists: ${_pref.containsKey(keyString)}', name: 'LocalHelper');
    return _pref.containsKey(keyString);
  }
}

//calling the shared preference
/*

    onpressed : (){
    SharedHelper.set(key:"islogin" , value : true);
    }

*/

// The global instance of GetIt for dependency injection.
// final getIt = GetIt.instance;
//
// Future<void> setupServiceLocator() async {
//   try {
    // SharedPreferences

//     final sharedPrefs = await SharedPreferences.getInstance();
//     getIt.registerSingleton<SharedPreferences>(sharedPrefs);
//     getIt.registerSingleton<LocalHelper>(LocalHelper(sharedPrefs));
//     );

// abstract class CacheDataHandler<T> {
//   T? getValue({required Box box, required String key, T? defaultValue});
//   void setValue(Box box, String key, T value);
// }

// class PrimitiveCacheDataHandler<T> extends CacheDataHandler<T> {
//   @override
//   T? getValue({required Box box, required String key, T? defaultValue}) {
//     var result = box.get(key, defaultValue: defaultValue);
//     return result;
//   }

//   @override
//   void setValue(Box box, String key, T value) {
//     box.put(key, value);
//   }
// }

// class ObjectCacheDataHandler<T> extends CacheDataHandler<T> {
//   final T Function(Map<String, dynamic> json) fromJson;

//   ObjectCacheDataHandler({required this.fromJson});

//   @override
//   T? getValue({required Box box, required String key, T? defaultValue}) {
//     final String? jsonData = box.get(key);
//     if (jsonData != null) {
//       return fromJson(jsonDecode(jsonData));
//     }
//     return defaultValue;
//   }

//   @override
//   void setValue(Box box, String key, T value) {
//     final jsonData = jsonEncode(value);
//     box.put(key, jsonData);
//   }
// }
