import 'package:flutter/material.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';

class FormTitle extends StatelessWidget {
  const FormTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textThemeCustom.headlineSmall?.copyWith(
        color: context.colorScheme.primary,
      ),
    );
  }
}
