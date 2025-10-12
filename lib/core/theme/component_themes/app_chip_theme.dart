import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_corners.dart';
import '../../constants/app_padding.dart';

abstract final class AppChipTheme {
  AppChipTheme._();
  static ChipThemeData chipTheme(ColorScheme colorScheme) {
    return ChipThemeData(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius.r),
      ),
      labelPadding: EdgeInsets.symmetric(
        horizontal: AppPadding.padding16.w,
        vertical: AppPadding.padding10.h,
      ),
    );
  }
}
