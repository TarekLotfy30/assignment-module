import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/features/offer/controller/offer_controller.dart';
import 'package:assignment/features/offer/presentation/widgets/greeting_section.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_card.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_types.dart';
import 'package:assignment/features/offer/presentation/widgets/search_and_location_section.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// translate-me-ignore-all-file
@RoutePage()
class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.padding16,
            vertical: AppPadding.padding24,
          ),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: const GreetingSection()),
              SliverToBoxAdapter(child: const SearchAndLocationSection()),
              SliverToBoxAdapter(
                child: Text("الأنواع", style: context.textTheme.displayMedium),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: AppSpacing.spacing16.h),
              ),
              SliverToBoxAdapter(child: const OfferTypes()),
              SliverToBoxAdapter(
                child: SizedBox(height: AppSpacing.spacing16.h),
              ),
              GetBuilder<OfferController>(
                init: OfferController(),
                builder: (controller) => SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) => OfferCard(
                      index: index,
                      offer: controller.selectedOffers[index],
                    ),
                    childCount: controller.selectedOffers.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
