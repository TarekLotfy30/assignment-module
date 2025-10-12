import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCorners {
  AppCorners._();

  /// Border radius for small components
  /// Used for: Chips, badges, small containers
  static final double smallBorderRadius = 8.r;

  /// Border radius for input components
  /// Used for: TextFormField, DropdownButton, SearchBar
  static final double inputBorderRadius = 10.r;

  /// Border radius for card components
  /// Used for: Cards, containers, elevated surfaces
  static final double cardBorderRadius = 12.r;

  /// Border radius for button components
  /// Used for: ElevatedButton, OutlinedButton, TextButton containers
  static final double buttonBorderRadius = 16.r;

  /// Border radius for dialog components
  /// Used for: AlertDialog, BottomSheet, Modal dialogs
  static final double dialogBorderRadius = 24.r;

  /// Border radius for large components
  /// Used for: Bottom sheets, large cards, hero sections
  static final double largeBorderRadius = 28.r;
}
