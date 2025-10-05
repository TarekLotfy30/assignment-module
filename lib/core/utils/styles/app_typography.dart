import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_font_weight.dart';

abstract final class AppTypography {
  const AppTypography._();

  static final textStyle18Bold = TextStyle(
    fontSize: 18.sp,
    fontWeight: AppFontWeight.bold,
  );

  
  static final textStyle18SemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: AppFontWeight.semiBold,
  );


  static final textStyle16Bold = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.bold,
  );

  static final textStyle16SemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.semiBold,
  );

  static final textStyle16Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.regular,
  );

  static final textStyle13Bold = TextStyle(
    fontSize: 13.sp,
    fontWeight: AppFontWeight.bold,
  );

  static final textStyle13SemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: AppFontWeight.semiBold,
  );

  static final textStyle13Regular = TextStyle(
    fontSize: 13.sp,
    fontWeight: AppFontWeight.regular,
  );

  static final textStyle11SemiBold = TextStyle(
    fontSize: 11.sp,
    fontWeight: AppFontWeight.semiBold,
  );

}