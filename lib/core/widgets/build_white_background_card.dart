import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class BuildWhiteBackgroundCard extends StatelessWidget {
  const BuildWhiteBackgroundCard({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        AppPadding.padding48,
        AppPadding.padding16,
        AppPadding.padding16,
        AppPadding.padding16,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: AppSpacing.spacing24,
        children: children,
      ),
    );
  }
}
