import 'package:flutter/material.dart';

import '../../utils/styles/app_typography.dart';

abstract final class AppTextThemes {
  const AppTextThemes._();

  static final TextTheme textTheme = TextTheme(
    // Display styles (18pt) - Large headings
    displayLarge: AppTypography.textStyle18Bold,
    displayMedium: AppTypography.textStyle18SemiBold,
    // displaySmall: AppTypography.displaySmall,

    // Display styles (16pt) - Large headings
    headlineLarge: AppTypography.textStyle16Bold,
    headlineMedium: AppTypography.textStyle16SemiBold,
    headlineSmall: AppTypography.textStyle16Regular,

    // Display styles (13pt)
    titleLarge: AppTypography.textStyle13Bold,
    titleMedium: AppTypography.textStyle13SemiBold,
    titleSmall: AppTypography.textStyle13Regular,

    // Label styles (11pt) - Labels, captions
    //labelLarge: AppTypography.textStyle11Bold,
    labelMedium: AppTypography.textStyle11SemiBold,
    //labelSmall: AppTypography.textStyle13regular,

    // Body styles (11pt) - Body text
    //bodyLarge: AppTypography.bodyLarge,
    //bodyMedium: AppTypography.textStyle11SemiBold,
    //bodySmall: AppTypography.bodySmall
  );
}

// TEXT USAGE EXAMPLES:
/*
// Method 1: Using Theme.of(context).textTheme (Recommended - automatically adapts to theme)
Text(
  'Main Title',
  style: Theme.of(context).textTheme.headlineLarge, // Uses correct color for current theme
)

Text(
  'Body content goes here',
  style: Theme.of(context).textTheme.bodyMedium, // Secondary text color
)

Text(
  'Small helper text',
  style: Theme.of(context).textTheme.bodySmall, // Tertiary text color
)

// Method 2: Direct color usage (when you need specific control)
Text(
  'Primary text',
  style: TextStyle(
    color: AppColors.textPrimary, // Will be grayscale900 in light theme
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
)

Text(
  'Secondary information',
  style: TextStyle(
    color: AppColors.textSecondary, // Will be grayscale700 in light theme
    fontSize: 14,
  ),
)

Text(
  'Subtle text',
  style: TextStyle(
    color: AppColors.textTertiary, // Will be grayscale500 in light theme
    fontSize: 12,
  ),
)

// Method 3: For special cases
Text(
  'Error message',
  style: TextStyle(
    color: Theme.of(context).brightness == Brightness.light 
        ? AppColors.textError 
        : AppColors.textErrorDark,
    fontSize: 14,
  ),
)

Text(
  'Click here',
  style: TextStyle(
    color: Theme.of(context).brightness == Brightness.light 
        ? AppColors.textLink 
        : AppColors.textLinkDark,
    fontSize: 14,
    decoration: TextDecoration.underline,
  ),
)

// Method 4: Disabled text
Text(
  'Disabled option',
  style: TextStyle(
    color: Theme.of(context).brightness == Brightness.light 
        ? AppColors.textDisabled 
        : AppColors.textDisabledDark,
    fontSize: 14,
  ),
)
*/
