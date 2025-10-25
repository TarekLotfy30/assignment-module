import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';
import 'form_data.dart' show FormData;
import 'form_title.dart';

// translate-me-ignore-all-file
class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "العنوان",
            style: context.textThemeCustom.displayMedium?.copyWith(
              color: context.colorScheme.primary,
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Column(
                    spacing: 24,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FormTitle(title: "المحافظه"),
                          FormData(data: "القاهره"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "العنوان"),
                          FormData(data: "شارع محمد احمد"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "رقم الشقه "),
                          FormData(data: "12"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "رقم تليفون"),
                          FormData(data: "01234567890"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 138.w),
                const Expanded(
                  child: Column(
                    spacing: 24,
                    children: [
                      Row(
                        children: [
                          FormTitle(title: "المنطقه السكانيه"),
                          FormData(data: "مدينه نصر"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "رقم العماره"),
                          FormData(data: "16"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "علامه مميزه"),
                          FormData(data: "مريم صيدليه"),
                        ],
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
              child: const Text("تعديل البيانات"),
            ),
          ),
        ],
      ),
    );
  }
}
