import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';

class AshtarLogo extends StatelessWidget {
  const AshtarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.w, top: 22.h),
      child: Image.asset(
        AppAssets.ashtarLogo,
        fit: BoxFit.contain,
        alignment: AlignmentGeometry.topRight,
        height: 118.h,
      ),
    );
  }
}
