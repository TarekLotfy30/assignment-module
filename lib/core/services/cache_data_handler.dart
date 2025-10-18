import 'local/app_shared_keys.dart';

abstract class CacheDataHandler<T> {
  Future<T?> getValue({
    required String boxName,
    required AppSharedKey key,
    T? defaultValue,
  });
  void setValue({
    required String boxName,
    required AppSharedKey key,
    required T value,
  });
  
}
