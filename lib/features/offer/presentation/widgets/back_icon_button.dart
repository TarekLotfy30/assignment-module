import 'package:assignment/core/constants/app_icons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.pop(),
      child: SvgPicture.asset(AppIcons.backArrow, semanticsLabel: 'Back Icon'),
    );
  }
}
