import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_corners.dart';

class OfferCardCover extends StatelessWidget {
  const OfferCardCover({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 358.w / 170.h,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppCorners.buttonBorderRadius),
          topRight: Radius.circular(AppCorners.buttonBorderRadius),
        ),
        child: Image.asset(AppAssets.cover, fit: BoxFit.cover),
      ),
    );
  }
}
