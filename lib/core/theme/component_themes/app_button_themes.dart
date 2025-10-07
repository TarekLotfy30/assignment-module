import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_border_width.dart';
import '../../constants/app_corners.dart';
import '../../constants/app_elevation.dart';
import '../../constants/app_padding.dart';
import '../../constants/app_heights.dart';
import '../../utils/styles/app_fonts_family.dart';
import '../text_themes/app_text_themes.dart';

/// Button theme configurations for consistent button styling.
///
/// Provides theme builders for all button types used in the application:
/// - ElevatedButton: Primary actions (uses primary color)
/// - OutlinedButton: Secondary actions (uses secondary color)
/// - FloatingActionButton: Main action button (uses tertiary color for the bright green)
/// - TextButton: Tertiary actions

abstract final class AppButtonThemes {
  const AppButtonThemes._();

  static ElevatedButtonThemeData elevatedButtonTheme(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: AppElevation.buttonElevation,
        shadowColor: colorScheme.shadow,
        surfaceTintColor: colorScheme.primary,
        overlayColor: colorScheme.primary.withValues(alpha: 0.12),
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
        ),
        padding: EdgeInsets.symmetric(vertical: AppPadding.padding14.h),
        minimumSize: Size(double.maxFinite, AppHeights.buttonHeight.h),
        textStyle: AppTextThemes.textTheme.headlineLarge?.copyWith(
          fontFamily: AppFontFamily.teshrin,
        ),
      ),
    );
  }

  static OutlinedButtonThemeData outlinedButtonTheme(ColorScheme colorScheme) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: AppElevation.buttonElevation, //0
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppCorners.buttonBorderRadius.r, //16
          ), //16
          side: BorderSide(
            color: colorScheme.primary,
            width: AppBorderWidth.defaultBorderWidth.w, //1
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.padding8.h,
          horizontal: AppPadding.padding14.w,
        ),
        minimumSize: Size(double.maxFinite, AppHeights.buttonHeight.h),
        textStyle: AppTextThemes.textTheme.titleMedium?.copyWith(
          fontFamily: AppFontFamily.teshrin,
        ),
      ),
    );
  }

  static FloatingActionButtonThemeData fabTheme(ColorScheme colorScheme) {
    return FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      elevation: AppElevation.fabElevation, //6
      focusElevation: AppElevation.fabElevation + 2,
      hoverElevation: AppElevation.fabElevation + 2,
      highlightElevation: AppElevation.fabElevation + 4,
      shape: const CircleBorder(),
    );
  }

  static TextButtonThemeData textButtonTheme(ColorScheme colorScheme) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.primary,
        elevation: AppElevation.buttonElevation,
        alignment: Alignment.center,
        textStyle: AppTextThemes.textTheme.labelSmall?.copyWith(
          fontFamily: AppFontFamily.teshrin,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
