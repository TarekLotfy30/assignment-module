import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';

class ProfilePictureSection extends StatelessWidget {
  const ProfilePictureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "الصورة الشخصية",
          style: context.textThemeCustom.displayMedium?.copyWith(
            color: context.colorScheme.primary,
            fontSize: 25.sp,
          ),
        ),
        const SizedBox(height: 24),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  CircleAvatar(radius: 60.r),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "صورتك الشخصية",
                        style: context.textThemeCustom.displayMedium?.copyWith(
                          color: context.colorScheme.primary,
                          fontSize: 24.sp,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "الصورة الشخصية لازم تكون بصيغة jpg, jpeg, png و متكونش اكبر من 800px طول او عرض",
                        style: context.textThemeCustom.titleSmall?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 165),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("تغير الصورة"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
