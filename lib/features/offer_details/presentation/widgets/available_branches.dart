import 'package:assignment/core/constants/app_icon.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/core/widgets/build_optimized_svg.dart';
import 'package:assignment/core/widgets/build_white_background_card.dart';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// translate-me-ignore-all-file
class AvailableBranches extends StatelessWidget {
  const AvailableBranches({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "الفروع المتاحة",
          style: context.textThemeCustom.displayMedium?.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        SizedBox(height: AppSpacing.spacing14.h),
        BuildWhiteBackgroundCard(
          children: [
            ...List.generate(
              offer.branchesList.length,
              (index) => Row(
                children: [
                  BuildOptimizedSvg(
                    AppIcons.locationFilter,
                    colorFilter: ColorFilter.mode(
                      context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: AppSpacing.spacing8.w),
                  Expanded(
                    child: Text(
                      offer.branchesList[index].location,
                      style: context.textThemeCustom.titleSmall?.copyWith(
                        color: context.colorScheme.tertiary,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: context.colorScheme.tertiary,
                      ),

                      softWrap: true,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
