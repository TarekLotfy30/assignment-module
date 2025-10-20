import 'package:flutter/material.dart';

import '../helpers/extensions/theme_extension.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
