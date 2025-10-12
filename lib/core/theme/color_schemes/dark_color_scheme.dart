// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import '../../utils/colors/app_colors.dart';

/// Dark theme color scheme using AppColors

abstract final class DarkColorScheme {
  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.dark,

    // ========== PRIMARY COLORS ==========
    // → Main brand color in dark mode (lighter tone for visibility)
    primary: AppColors.blue300,
    onPrimary: AppColors.blue900,
    primaryContainer: AppColors.blue700,
    onPrimaryContainer: AppColors.white,

    // ========== SECONDARY COLORS ==========
    secondary: AppColors.teal300,
    onSecondary: AppColors.teal900,
    secondaryContainer: AppColors.teal700,
    onSecondaryContainer: AppColors.white,

    // ========== TERTIARY COLORS ==========
    tertiary: AppColors.azure300,
    onTertiary: AppColors.azure900,
    tertiaryContainer: AppColors.azure700,
    onTertiaryContainer: AppColors.white,

    // ========== SURFACE COLORS ==========
    surface: AppColors.darkSurface, // main scaffold background
    onSurface: AppColors.textPrimaryDark,
    surfaceContainerHighest: AppColors.darkSurfaceElevated1,
    surfaceContainerHigh: AppColors.darkSurfaceElevated2,
    surfaceContainer: AppColors.gray800,
    surfaceContainerLow: AppColors.gray700,
    surfaceContainerLowest: AppColors.gray900,
    onSurfaceVariant: AppColors.textSecondaryDark,

    // ========== OUTLINE COLORS ==========
    outline: AppColors.gray600,
    outlineVariant: AppColors.gray700,

    // ========== UTILITY COLORS ==========
    shadow: AppColors.shadowStrong,
    scrim: AppColors.scrim,

    // ========== INVERSE COLORS ==========
    inverseSurface: AppColors.gray100,
    onInverseSurface: AppColors.gray900,
    inversePrimary: AppColors.blue500,

    // ========== SURFACE TINT ==========
    surfaceTint: AppColors.primary,

    // ========== ERROR COLORS ==========
    error: AppColors.error,
    onError: AppColors.textOnPrimary,
    errorContainer: AppColors.errorDark,
    onErrorContainer: AppColors.errorLight,
  );
}
