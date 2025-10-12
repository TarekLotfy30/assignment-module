import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_corners.dart';
import '../../constants/app_elevation.dart';
import '../../constants/app_padding.dart';

abstract final class AppCardTheme {
  AppCardTheme._();

  static CardThemeData cardTheme(ColorScheme colorScheme) {
    return CardThemeData(
      elevation: AppElevation.xSmallElevation, //2
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppCorners.buttonBorderRadius.r),
      ),
      shadowColor: colorScheme.shadow,
      surfaceTintColor: colorScheme.onPrimary,
      margin: EdgeInsets.only(bottom: AppPadding.padding24.h),
    );
  }
}
