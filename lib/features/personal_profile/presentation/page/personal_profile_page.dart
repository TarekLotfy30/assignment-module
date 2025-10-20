import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';

// translate-me-ignore-all-file
@RoutePage()
class PersonalProfilePage extends StatelessWidget {
  const PersonalProfilePage({super.key});

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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الملف الشخصى',
              style: context.textThemeCustom.displayLarge?.copyWith(
                color: context.colorScheme.primary,
                fontSize: 30.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
