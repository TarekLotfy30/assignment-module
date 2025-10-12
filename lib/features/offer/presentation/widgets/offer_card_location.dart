import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_corners.dart';
import '../../../../core/constants/app_icon.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../../../core/widgets/build_optimized_svg.dart';
import '../../data/models/offer_model.dart';

class OfferCardLocation extends StatelessWidget {
  const OfferCardLocation({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppPadding.padding16.h),
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.padding8.w,
        vertical: AppPadding.padding4.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffECF0FA),
        borderRadius: BorderRadius.circular(AppCorners.smallBorderRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BuildOptimizedSvg(
            AppIcon.locationFilter,
            colorFilter: ColorFilter.mode(Color(0xff064698), BlendMode.srcIn),
          ),
          const SizedBox(width: 8),
          Text(
            offer.location,
            style: context.textThemeCustom.labelMedium?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
