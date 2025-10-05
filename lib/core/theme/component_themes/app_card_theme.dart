import 'package:assignment/core/constants/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_corners.dart';
import '../../constants/app_elevation.dart';

abstract final class AppCardTheme {
  AppCardTheme._();

  static CardThemeData cardTheme(ColorScheme colorScheme) {
    return CardThemeData(
      elevation: AppElevation.xSmallElevation, //2
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppCorners.buttonBorderRadius.r),
      ),
      shadowColor: colorScheme.shadow,
      color: colorScheme.surface,
      surfaceTintColor: colorScheme.primary,
      margin: EdgeInsets.only(bottom: AppPadding.padding24.h),
    );
  }
}
