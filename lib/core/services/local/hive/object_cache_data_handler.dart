import 'dart:convert';

import 'package:hive/hive.dart';

import '../app_shared_keys.dart';
import 'cache_data_handler.dart';

class ObjectCacheDataHandler<T> extends CacheDataHandler<T> {
  final T Function(Map<String, dynamic> json) fromJson;

  ObjectCacheDataHandler({required this.fromJson});

  @override
  Future<T?> getValue({
    required String boxName,
    required AppSharedKey key,
    T? defaultValue,
  }) async {
    final box = await _openBoxIfNeeded(boxName);
    final String? jsonData = box.get(_getKeyString(key));
    if (jsonData != null) {
      return fromJson(jsonDecode(jsonData));
    }
    return defaultValue;
  }

  @override
  Future<void> setValue({
    required String boxName,
    required AppSharedKey key,
    required T value,
  }) async {
    final box = await _openBoxIfNeeded(boxName);
    final jsonData = jsonEncode(value);
    await box.put(_getKeyString(key), jsonData);
  }

  Future<Box> _openBoxIfNeeded(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox(boxName);
    }
    return Hive.box(boxName);
  }

  String _getKeyString(AppSharedKey key) => key.toString().split('.').last;
}

// final userCache = ObjectCacheDataHandler<User>(
//     fromJson: User.fromJson,
//   );

// final myUser = User(name: 'Alice', age: 30);

//   await userCache.setValue(
//     boxName: 'userBox',
//     key: AppSharedKey.currentUser, // Using your safe enum key
//     value: myUser,
//   );
