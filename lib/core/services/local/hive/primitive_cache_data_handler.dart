import 'package:hive/hive.dart';

import '../app_shared_keys.dart';
import 'cache_data_handler.dart';

class PrimitiveCacheDataHandler<T> extends CacheDataHandler<T> {
  @override
  Future<T?> getValue({
    required String boxName,
    required AppSharedKey key,
    T? defaultValue,
  }) async {
    final box = await _openBoxIfNeeded(boxName);
    final result = box.get(_getKeyString(key), defaultValue: defaultValue);
    return result;
  }

  @override
  Future<void> setValue({
    required String boxName,
    required AppSharedKey key,
    required T value,
  }) async {
    final box = await _openBoxIfNeeded(boxName);
    await box.put(_getKeyString(key), value);
  }

  Future<Box> _openBoxIfNeeded(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox(boxName);
    }
    return Hive.box(boxName);
  }

  String _getKeyString(AppSharedKey key) => key.toString().split('.').last;
}

// example  of usage

// CacheDataHandler<String> userStorage = PrimitiveCacheDataHandler<String>();

// userStorage.setValue(boxName: 'users', key: 'username', value: 'alice');
// String? name = userStorage.getValue(boxName: 'users', key: 'username');
