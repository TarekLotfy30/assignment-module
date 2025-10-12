import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_corners.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../data/models/offer_model.dart';
import 'offer_card_cover.dart';
import 'offer_card_discount.dart';
import 'offer_card_location.dart';

class OfferCardDetails extends StatelessWidget {
  const OfferCardDetails({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textScheme = context.textThemeCustom;
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const OfferCardCover(),
              Positioned(
                right: 16,
                bottom: -30,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.asset(
                    AppAssets.profile,
                    fit: BoxFit.scaleDown,
                  ).image,
                  backgroundColor: Colors.transparent,
                ),
              ),
              OfferCardDiscount(offer: offer),
            ],
          ),
          SizedBox(height: AppSpacing.spacing40.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppCorners.buttonBorderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offer.title,
                  style: textScheme.headlineMedium?.copyWith(
                    color: colorScheme.primary,
                  ),
                ),
                SizedBox(height: AppSpacing.spacing12.h),
                Text(
                  offer.description,
                  style: textScheme.labelMedium?.copyWith(
                    color: colorScheme.tertiary,
                  ),
                ),
                SizedBox(height: AppSpacing.spacing16.h),
                OfferCardLocation(offer: offer),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
