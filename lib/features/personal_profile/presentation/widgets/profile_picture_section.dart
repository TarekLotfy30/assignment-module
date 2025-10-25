import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';

// translate-me-ignore-all-file
class ProfilePictureSection extends StatelessWidget {
  const ProfilePictureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "الصورة الشخصية",
            style: context.textThemeCustom.displayMedium?.copyWith(
              color: context.colorScheme.primary,
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Row(
              children: [
                SizedBox(
                  height: 60.h,
                  width: 60.w,
                  child: CircleAvatar(radius: 60.r),
                ),
                SizedBox(width: 24.w),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "صورتك الشخصية",
                        style: context.textThemeCustom.displayMedium?.copyWith(
                          color: context.colorScheme.primary,
                          fontSize: 24.sp,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "الصورة الشخصية لازم تكون بصيغة jpg, jpeg, png و متكونش اكبر من 800px طول او عرض",
                        style: context.textThemeCustom.titleSmall?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 165),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('تغير الصورة'),
            ),
          ),
        ],
      ),
    );
  }
}
