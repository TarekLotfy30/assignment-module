import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/extensions/theme_extension.dart';

class BackgroundCustom extends StatelessWidget {
  const BackgroundCustom({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(80.w, 50.h, 78.w, 50.h),
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 48.h),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
