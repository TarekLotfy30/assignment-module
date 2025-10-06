import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/features/offer/controller/offer_controller.dart';
import 'package:assignment/features/offer/presentation/widgets/greeting_section.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_card.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_types.dart';
import 'package:assignment/features/offer/presentation/widgets/search_and_location_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

// translate-me-ignore-all-file
class OfferPageBody extends StatelessWidget {
  const OfferPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: const GreetingSection()),
        SliverToBoxAdapter(child: SizedBox(height: AppSpacing.spacing16.h)),
        SliverToBoxAdapter(child: const SearchAndLocationSection()),
        SliverToBoxAdapter(child: SizedBox(height: AppSpacing.spacing16.h)),
        SliverToBoxAdapter(
          child: Text(
            "الأنواع",
            style: context.textTheme.displayMedium?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: AppSpacing.spacing14.h)),
        SliverToBoxAdapter(child: const OfferTypes()),
        SliverToBoxAdapter(child: SizedBox(height: AppSpacing.spacing32.h)),
        GetBuilder<OfferController>(
          init: OfferController(),
          builder: (controller) => SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) => OfferCard(offer: controller.selectedOffers[index]),
              childCount: controller.selectedOffers.length,
            ),
          ),
        ),
      ],
    );
  }
}
