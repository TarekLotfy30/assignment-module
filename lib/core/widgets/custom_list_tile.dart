import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_icon.dart';
import '../helpers/extensions/theme_extension.dart';
import '../models/custom_list_tile.dart';
import 'build_optimized_svg.dart';

// translate-me-ignore-all-file
class CustomListTile extends StatelessWidget {
  const CustomListTile(this.options, {super.key});

  final ListTileOptions options;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.5.h),
      child: InkWell(
        onTap: () async {
          await AutoRouter.of(context).push(options.destination);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.5.h),
          padding: EdgeInsets.symmetric(horizontal: 12.5.w, vertical: 20.h),
          child: Row(
            children: [
              BuildOptimizedSvg(options.leadingIcon),
              SizedBox(width: 8.w),
              Text(
                options.title,
                textAlign: TextAlign.center,
                style: context.textThemeCustom.titleMedium?.copyWith(
                  color: context.colorScheme.onPrimary,
                ),
              ),
              const Spacer(),
              const BuildOptimizedSvg(AppIcon.arrowLeft),
            ],
          ),
        ),
      ),
    );
  }
}
