import 'package:assignment/core/constants/app_icon.dart';
import 'package:assignment/core/widgets/build_optimized_svg.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BuildBackIcon extends StatelessWidget {
  const BuildBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.pop(),
      child: BuildOptimizedSvg(AppIcons.backArrow),
    );
  }
}
