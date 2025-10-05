import 'package:assignment/core/constants/app_assets.dart';
import 'package:assignment/core/constants/app_corners.dart';
import 'package:assignment/core/constants/app_icon.dart';
import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/core/widgets/build_optimized_svg.dart';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.index, required this.offer});

  final int index;
  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              AspectRatio(
                aspectRatio: 358 / 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppCorners.buttonBorderRadius),
                    topRight: Radius.circular(AppCorners.buttonBorderRadius),
                  ),
                  child: Image.asset(AppAssets.cover, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                right: 16.0,
                bottom: -30.0,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.asset(
                    AppAssets.profile,
                    fit: BoxFit.scaleDown,
                  ).image,
                  backgroundColor: Colors.transparent,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffE9FFEE),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppCorners.buttonBorderRadius),
                      bottomRight: Radius.circular(
                        AppCorners.buttonBorderRadius,
                      ),
                    ),
                  ),
                  child: Text(
                    "🔥 خصم ${offer.discount}%",
                    style: context.textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.spacing40),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppCorners.buttonBorderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offer.title ?? '',
                  style: context.textTheme.headlineMedium,
                ),
                const SizedBox(height: AppSpacing.spacing12),
                Text(
                  offer.description ?? '',
                  style: context.textTheme.labelMedium,
                ),
                const SizedBox(height: 16.0),
                Container(
                  margin: const EdgeInsets.only(bottom: AppPadding.padding16),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.padding8,
                    vertical: AppPadding.padding4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffECF0FA),
                    borderRadius: BorderRadius.circular(
                      AppCorners.smallBorderRadius,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BuildOptimizedSvg(
                        AppIcons.locationFilter,
                        colorFilter: ColorFilter.mode(
                          const Color(0xff064698),
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        offer.location ?? '',
                        style: context.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
