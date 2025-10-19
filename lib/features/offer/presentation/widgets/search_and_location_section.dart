import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_corners.dart';
import '../../../../core/constants/app_icon.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../../../core/widgets/app_model_bottom_sheet.dart';
import '../../../../core/widgets/build_optimized_svg.dart';
import '../../controller/offer_controller.dart';
import 'egypt_cities_scrollable_sheet.dart';

// translate-me-ignore-all-file
class SearchAndLocationSection extends StatelessWidget {
  const SearchAndLocationSection({super.key});

  Future<void> openEgyptCitiesModelBottomSheet(BuildContext context) {
    return openModalBottomSheet(
      context: context,
      builder: (context) => const EgyptCitiesScrollableSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OfferController>();
    return Row(
      spacing: AppSpacing.spacing12.w,
      children: [
        Expanded(
          flex: 2,
          child: SearchBar(
            leading: const BuildOptimizedSvg(AppIcon.search),
            hintText: 'ابحث بالأسم',
            controller: controller.searchController,
            onChanged: (query) {
              EasyDebounce.debounce(
                "search_debounce",
                const Duration(milliseconds: 500),
                () => controller.onSearchChanged(query),
              );
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => openEgyptCitiesModelBottomSheet(context),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.padding16.w,
                vertical: AppPadding.padding16.h,
              ),
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  AppCorners.cardBorderRadius,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BuildOptimizedSvg(AppIcon.locationFilter),
                  const SizedBox(width: AppSpacing.spacing8),
                  Flexible(
                    child: GetBuilder<OfferController>(
                      init: controller,
                      builder: (controller) => FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          controller.selectedRadio.getArabicName(),
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: context.textTheme.headlineMedium?.copyWith(
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
