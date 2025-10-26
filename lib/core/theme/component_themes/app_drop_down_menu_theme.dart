import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_border_width.dart';
import '../../constants/app_corners.dart';
import '../../constants/app_elevation.dart';
import '../../constants/app_padding.dart';
import '../../utils/colors/app_colors.dart';

abstract final class AppDropDownMenuTheme {
  const AppDropDownMenuTheme._();

  static DropdownMenuThemeData dropdownMenuTheme(
    ColorScheme colorScheme,
    TextTheme textTheme, {
    required bool isDark,
  }) {
    return DropdownMenuThemeData(
      textStyle: textTheme.bodyMedium,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
          borderSide: BorderSide(
            color: colorScheme.outline.withValues(alpha: 0.5),
            width: AppBorderWidth.defaultBorderWidth.w,
          ),
        ),
        filled: true,
        fillColor: isDark
            ? colorScheme.surfaceContainerHighest
            : AppColors.gray50.withValues(alpha: 0.5),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppPadding.padding16.w,
          vertical: AppPadding.padding10.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
          borderSide: BorderSide(
            color: colorScheme.outline.withValues(alpha: 0.5),
            width: AppBorderWidth.defaultBorderWidth.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: AppBorderWidth.focusedBorderWidth.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: AppBorderWidth.focusedBorderWidth.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: AppBorderWidth.focusedBorderWidth.w,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
          borderSide: BorderSide(
            color: colorScheme.outline.withValues(alpha: 0.5),
            width: AppBorderWidth.defaultBorderWidth.w,
          ),
        ),
        errorStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.error),
        hintStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.outline),
        labelStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.outline),
        suffixStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.outline),
        prefixStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.outline),
        prefixIconColor: colorScheme.outline,
        suffixIconColor: colorScheme.outline,
        isCollapsed: false,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        constraints: BoxConstraints.tight(const Size.fromHeight(48)),
        floatingLabelStyle: textTheme.bodyMedium?.copyWith(
          color: colorScheme.outline,
        ),
        hoverColor: colorScheme.onSurface.withValues(alpha: 0.1),
        focusColor: colorScheme.onSurface.withValues(alpha: 0.1),
        errorMaxLines: 1,
      ),
      menuStyle: MenuStyle(
        elevation: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return AppElevation.buttonElevation;
          }
          return 0;
        }),
        shape: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppCorners.smallBorderRadius.r,
              ),
            );
          }
          if (states.contains(WidgetState.hovered)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppCorners.smallBorderRadius.r,
              ),
            );
          }
          if (states.contains(WidgetState.focused)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppCorners.smallBorderRadius.r,
              ),
            );
          }
          return null;
        }),
      ),
    );
  }
}
