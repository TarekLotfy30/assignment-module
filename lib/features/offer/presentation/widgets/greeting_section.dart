import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../../../core/widgets/build_back_button.dart';
import '../../../../core/widgets/build_optimized_svg.dart';

// translate-me-ignore-all-file
class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: AppPadding.padding15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.spacing8.h,
              children: [
                const BuildBackIcon(),
                Text(
                  'اهلا بك محمد في العروض',
                  style: context.textThemeCustom.displayLarge?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
                Text(
                  'هذه العروض متاحة لطلاب ذاكر فقط.',
                  style: context.textThemeCustom.titleSmall?.copyWith(
                    color: context.colorScheme.primaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: FittedBox(
            fit: BoxFit.contain,
            child: BuildOptimizedSvg(AppAssets.openedGift),
          ),
        ),
      ],
    );
  }
}
