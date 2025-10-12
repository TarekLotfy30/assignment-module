import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../constants/app_icon.dart';
import 'build_optimized_svg.dart';

class BuildBackIcon extends StatelessWidget {
  const BuildBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.pop(),
      child: const BuildOptimizedSvg(AppIcon.backArrow),
    );
  }
}
