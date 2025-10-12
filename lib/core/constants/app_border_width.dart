import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBorderWidth {
  AppBorderWidth._();

  /// Default border width for most components
  static final double defaultBorderWidth = 1.w;

  /// Border width for focused elements
  /// Thicker border to indicate focus state
  static final double focusedBorderWidth = 1.5.w;

  /// Border width for enabled input fields in dark theme
  /// Slightly thinner for better dark theme aesthetics
  static final double enabledBorderWidth = 0.85.w;

  /// Border width for disabled elements
  static final double disabledBorderWidth = 0.5.w;

  /// Border width for error states
  /// Thicker border to draw attention to errors
  static final double errorBorderWidth = 2.w;
}
