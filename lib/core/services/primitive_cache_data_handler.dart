import 'package:hive/hive.dart';

import 'cache_data_handler.dart';
import 'local/app_shared_keys.dart';

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
 
  // final PrimitiveCacheDataHandler<String> _handler;

  // Future<void> _loadTheme() async {
 // Try to get saved theme
  //   final storedTheme = _handler.getValue(
  //     box: 'preferences',
  //     key: _themeKey,
  //     defaultValue: 'light',
  //   );

  //   final theme = storedTheme == 'dark' ? AppTheme.dark : AppTheme.light;
  //   emit(ThemeState(theme));
  // }