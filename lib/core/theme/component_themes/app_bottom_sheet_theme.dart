import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_corners.dart';
import '../../constants/app_elevation.dart';

abstract final class AppBottomSheetTheme {
  const AppBottomSheetTheme._();

  static BottomSheetThemeData bottomSheetTheme(ColorScheme colorScheme) {
    return BottomSheetThemeData(
      backgroundColor: colorScheme.surface,
      elevation: AppElevation.dialogElevation,
      showDragHandle: true,
      surfaceTintColor: colorScheme.surface,
      dragHandleColor: colorScheme.inversePrimary,
      dragHandleSize: const Size(48, 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppCorners.dialogBorderRadius.r),
        ),
      ),
    );
  }
}
