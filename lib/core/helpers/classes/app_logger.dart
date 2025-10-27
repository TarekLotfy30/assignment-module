import 'package:flutter/foundation.dart';

class Logger {
  Logger._();

  // ANSI color codes for console output
  static const String _reset = '\x1B[0m';
  static const String _red = '\x1B[31m';
  static const String _yellow = '\x1B[33m';
  static const String _blue = '\x1B[34m';
  static const String _green = '\x1B[32m';
  static const String _gray = '\x1B[90m';

  static void _print(String level, String color, String message) {
    if (kDebugMode) {
      print('$color[$level]$_reset - $message');
    }
  }

  static void log(String message) {
    _print('LOG', _gray, message);
  }

  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    _print('ERROR', _red, message);
  }

  static void warning(String message) {
    _print('WARN', _yellow, message);
  }

  static void info(String message) {
    _print('INFO', _blue, message);
  }

  static void success(String message) {
    _print('SUCCESS', _green, message);
  }

  static void debug(String message) {
    _print('DEBUG', _gray, message);
  }
}

// Logger.info('App started');
// Logger.success('Data loaded successfully');
// Logger.warning('Cache is getting full');
// Logger.error('Failed to fetch data', exception, stackTrace);
// Logger.debug('User tapped button at position (120, 340)');
