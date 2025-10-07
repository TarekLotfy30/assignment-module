import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/core/widgets/build_white_background_card.dart';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// translate-me-ignore-all-file
class DetailsOfTheOffer extends StatelessWidget {
  const DetailsOfTheOffer({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "تفاصيل العرض",
          style: context.textThemeCustom.displayMedium?.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        SizedBox(height: AppSpacing.spacing14.h),
        BuildWhiteBackgroundCard(
          children: [
            ...List.generate(
              offer.offerDetailsList.length,
              (index) => Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 8.w,
                    decoration: BoxDecoration(
                      color: context.colorScheme.inversePrimary,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  SizedBox(width: AppSpacing.spacing8.w),
                  Expanded(
                    child: Text(
                      offer.offerDetailsList[index].title,
                      style: context.textThemeCustom.titleSmall?.copyWith(
                        color: context.colorScheme.tertiary,
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
