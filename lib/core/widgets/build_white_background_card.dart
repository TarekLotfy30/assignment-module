import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_padding.dart';
import '../constants/app_spacing.dart';
import '../helpers/extensions/theme_extension.dart';

class BuildWhiteBackgroundCard extends StatelessWidget {
  const BuildWhiteBackgroundCard({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        AppPadding.padding48.w,
        AppPadding.padding16.h,
        AppPadding.padding16.w,
        AppPadding.padding16.r,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: AppSpacing.spacing24,
        children: children,
      ),
    );
  }
}
