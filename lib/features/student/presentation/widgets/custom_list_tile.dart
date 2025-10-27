import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_icon.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../../../core/widgets/build_optimized_svg.dart';
import '../../data/models/list_tile_options_model.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile(this.options, {super.key});

  final ListTileOptions options;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await AutoRouter.of(context).push(widget.options.destination);
      },
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.5.h),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.5.w),
          decoration: BoxDecoration(
            color: isHovered ? context.colorScheme.onPrimary : null,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    BuildOptimizedSvg(
                      widget.options.leadingIcon,
                      colorFilter: ColorFilter.mode(
                        isHovered
                            ? context.colorScheme.primary
                            : context.colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 10),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        widget.options.title,
                        style: context.textThemeCustom.headlineMedium?.copyWith(
                          color: isHovered
                              ? context.colorScheme.primary
                              : context.colorScheme.onPrimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 19.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BuildOptimizedSvg(
                AppIcon.arrowLeft,
                colorFilter: ColorFilter.mode(
                  isHovered
                      ? context.colorScheme.primary
                      : context.colorScheme.onPrimary,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
