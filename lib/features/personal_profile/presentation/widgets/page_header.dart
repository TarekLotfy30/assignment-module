import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'الملف الشخصى',
      style: context.textThemeCustom.displayLarge?.copyWith(
        color: context.colorScheme.primary,
        fontSize: 30.sp,
      ),
    );
  }
}
