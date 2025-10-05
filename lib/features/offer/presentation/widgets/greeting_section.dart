import 'package:assignment/core/constants/app_assets.dart';
import 'package:assignment/core/constants/app_icon.dart';
import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/widgets/build_optimized_svg.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            padding: const EdgeInsets.only(top: AppPadding.padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.spacing8,
              children: [
                InkWell(
                  onTap: () => context.router.pop(),
                  child: BuildOptimizedSvg(AppIcons.backArrow),
                ),
                Text(
                  "اهلا بك محمد في العروض",
                  style: context.textTheme.displayMedium,
                ),
                // 14 400
                Text(
                  "هذه العروض متاحة لطلاب ذاكر فقط.",
                  style: context.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
        Expanded(
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
