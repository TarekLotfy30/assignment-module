import 'package:flutter/material.dart';

abstract final class AppScrollBarTheme {
  const AppScrollBarTheme._();

  static ScrollbarThemeData scrollbarTheme() {
    return ScrollbarThemeData(
      thumbColor: WidgetStateProperty.all<Color>(const Color(0xFF9AAFE4)),
      mainAxisMargin: 30,
      minThumbLength: 0.5,
      interactive: false,
      thumbVisibility: WidgetStateProperty.all<bool>(true),
      trackVisibility: WidgetStateProperty.all<bool>(true),
      thickness: WidgetStateProperty.all<double>(8),
      radius: const Radius.circular(6),
      trackColor: WidgetStateProperty.all<Color>(const Color(0xFFEBEFF9)),
      trackBorderColor: WidgetStateProperty.all<Color>(Colors.transparent),
    );
  }
}
