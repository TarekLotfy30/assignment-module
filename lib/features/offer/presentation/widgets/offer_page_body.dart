import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../controller/offer_controller.dart';
import 'greeting_section.dart';
import 'offer_card.dart';
import 'offer_types.dart';
import 'search_and_location_section.dart';

// translate-me-ignore-all-file
class OfferPageBody extends StatelessWidget {
  const OfferPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.padding16.w,
        vertical: AppPadding.padding24.h,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: GreetingSection()),
          const SliverToBoxAdapter(
            child: SizedBox(height: AppSpacing.spacing16),
          ),
          const SliverToBoxAdapter(child: SearchAndLocationSection()),
          const SliverToBoxAdapter(
            child: SizedBox(height: AppSpacing.spacing16),
          ),
          SliverToBoxAdapter(
            child: Text(
              'الأنواع',
              style: context.textThemeCustom.displayMedium?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: AppSpacing.spacing14),
          ),
          const SliverToBoxAdapter(child: OfferTypes()),
          const SliverToBoxAdapter(
            child: SizedBox(height: AppSpacing.spacing32),
          ),
          GetBuilder<OfferController>(
            builder: (controller) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) =>
                    OfferCard(offer: controller.selectedOffers[index]),
                childCount: controller.selectedOffers.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
