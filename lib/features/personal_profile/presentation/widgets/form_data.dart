import 'package:flutter/material.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';

class FormData extends StatelessWidget {
  const FormData({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: context.textThemeCustom.headlineSmall?.copyWith(
        color: context.colorScheme.primary,
      ),
    );
  }
}
