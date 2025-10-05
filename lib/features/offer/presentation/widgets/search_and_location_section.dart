import 'package:assignment/core/constants/app_border_width.dart';
import 'package:assignment/core/constants/app_corners.dart';
import 'package:assignment/core/constants/app_elevation.dart';
import 'package:assignment/core/constants/app_icon.dart';
import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/widgets/build_optimized_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// translate-me-ignore-all-file
class SearchAndLocationSection extends StatelessWidget {
  const SearchAndLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.padding16),
      child: Row(
        spacing: AppSpacing.spacing11,
        children: [
          Expanded(
            flex: 2,
            child: SearchBar(
              leading: BuildOptimizedSvg(AppIcons.search),
              hintText: 'ابحث بالمنطقة او النوع',
              hintStyle: WidgetStateProperty.all<TextStyle>(
                context.textTheme.headlineSmall!,
              ),
              backgroundColor: WidgetStateProperty.all<Color>(
                Colors.transparent,
              ),
              elevation: WidgetStateProperty.all<double>(
                AppElevation.appBarElevation,
              ),
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(horizontal: AppPadding.padding18),
              ),
              shape: WidgetStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xffBBC9ED),
                    width: AppBorderWidth.focusedBorderWidth,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppCorners.smallBorderRadius,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.padding16,
                vertical: AppPadding.padding12,
              ),
              decoration: BoxDecoration(
                color: Color(0xff064698),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  BuildOptimizedSvg(AppIcons.locationFilter),
                  Expanded(
                    child: Text(
                      'القاهرة',
                      textAlign: TextAlign.center,
                      style: context.textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
