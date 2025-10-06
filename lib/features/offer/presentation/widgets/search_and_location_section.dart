import 'package:assignment/core/constants/app_border_width.dart';
import 'package:assignment/core/constants/app_corners.dart';
import 'package:assignment/core/constants/app_elevation.dart';
import 'package:assignment/core/constants/app_icon.dart';
import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/core/widgets/build_optimized_svg.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
class SearchAndLocationSection extends StatelessWidget {
  const SearchAndLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSpacing.spacing8,
      children: [
        Expanded(
          flex: 2,
          child: SearchBar(
            leading: BuildOptimizedSvg(AppIcons.search),
            hintText: 'ابحث بالمنطقة او النوع...',
            hintStyle: WidgetStateProperty.all<TextStyle>(
              context.textTheme.headlineSmall!.copyWith(
                color: context.colorScheme.inversePrimary,
              ),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
            elevation: WidgetStateProperty.all<double>(
              AppElevation.appBarElevation,
            ),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: AppPadding.padding12),
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: context.colorScheme.inversePrimary,
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
              color: context.colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                BuildOptimizedSvg(AppIcons.locationFilter),
                Expanded(
                  child: Text(
                    'القاهرة',
                    textAlign: TextAlign.center,
                    style: context.textTheme.headlineMedium?.copyWith(
                      color: context.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
