// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import '../../utils/colors/app_colors.dart';

/// Light theme color scheme using AppColors
/// Built according to Material 3 color system
abstract final class LightColorScheme {
  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,

    // ========== PRIMARY COLORS ==========
    // → Main brand color used for ElevatedButtons, FABs, sliders, etc.
    primary: AppColors.primary, // blue500
    onPrimary: AppColors.textOnPrimary,
    primaryContainer: AppColors.blue100,
    onPrimaryContainer: AppColors.blue900,

    // ========== SECONDARY COLORS ==========
    // → Accent color used for highlights, chips, secondary buttons, etc.
    secondary: AppColors.secondary, // teal500
    onSecondary: AppColors.textOnSecondary,
    secondaryContainer: AppColors.teal100,
    onSecondaryContainer: AppColors.teal900,

    // ========== TERTIARY COLORS ==========
    // → Optional third color accent for less prominent actions.
    tertiary: AppColors.accent, // azure500
    onTertiary: AppColors.white,
    tertiaryContainer: AppColors.azure100,
    onTertiaryContainer: AppColors.azure900,

    // ========== SURFACE COLORS ==========
    // → Background and surface layers.
    surface: AppColors.background,
    onSurface: AppColors.textPrimary,
    surfaceContainerHighest: AppColors.gray100,
    surfaceContainerHigh: AppColors.gray50,
    surfaceContainer: AppColors.surface,
    surfaceContainerLow: AppColors.surface,
    surfaceContainerLowest: AppColors.white,
    onSurfaceVariant: AppColors.textSecondary,

    // ========== OUTLINE COLORS ==========
    outline: AppColors.border,
    outlineVariant: AppColors.divider,

    // ========== UTILITY COLORS ==========
    shadow: AppColors.shadow,
    scrim: AppColors.scrim,

    // ========== INVERSE COLORS ==========
    inverseSurface: AppColors.gray800,
    onInverseSurface: AppColors.gray100,
    inversePrimary: AppColors.blue300,

    // ========== SURFACE TINT ==========
    surfaceTint: AppColors.primary,

    // ========== ERROR COLORS ==========
    error: AppColors.error,
    onError: AppColors.white,
    errorContainer: AppColors.errorLight,
    onErrorContainer: AppColors.errorDark,
  );
}
