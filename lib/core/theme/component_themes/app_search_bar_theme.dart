import 'package:flutter/material.dart';

import '../../constants/app_border_width.dart';
import '../../constants/app_corners.dart';
import '../../constants/app_elevation.dart';
import '../../constants/app_padding.dart';

abstract final class AppSearchBarTheme {
  const AppSearchBarTheme._();

  static SearchBarThemeData searchBarThemeData(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return SearchBarThemeData(
      hintStyle: WidgetStateProperty.all<TextStyle>(
        textTheme.headlineSmall!.copyWith(color: colorScheme.outline),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all<double>(AppElevation.appBarElevation),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(
          horizontal: AppPadding.padding18,
          vertical: AppPadding.padding10,
        ),
      ),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          side: BorderSide(
            color: colorScheme.outline,
            width: AppBorderWidth.focusedBorderWidth,
          ),
          borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius),
        ),
      ),
    );
  }
}
