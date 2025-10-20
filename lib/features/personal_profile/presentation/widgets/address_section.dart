import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';
import 'form_data.dart' show FormData;
import 'form_title.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "العنوان",
          style: context.textThemeCustom.displayMedium?.copyWith(
            color: context.colorScheme.primary,
            fontSize: 25.sp,
          ),
        ),
        const SizedBox(height: 24),
        Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: Column(
                    spacing: 24,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FormTitle(title: "الاسم بالكامل رباعي"),
                          FormData(data: "احمد محمد القنصل السيد"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "رقم التليفون"),
                          FormData(data: "01234567890"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "الصف الدراسي"),
                          FormData(data: "الثالث الثانوي"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "رقم تليفون الام"),
                          FormData(data: "01234567890"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "المحافظه"),
                          FormData(data: "القاهره"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 138),
                Expanded(
                  child: Column(
                    spacing: 24,
                    children: [
                      Row(
                        children: [
                          FormTitle(title: "اسم المستخدم"),
                          FormData(data: "احمد محمد"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "البريد الالكتروني"),
                          FormData(data: "ahmed@gmail.com"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "الشعبة العلمية"),
                          FormData(data: "علمى رياضه"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "رقم تليفون الأب"),
                          FormData(data: "01234567890"),
                        ],
                      ),
                      Row(
                        children: [
                          FormTitle(title: "المدرسة"),
                          FormData(data: "مناره القاهرة"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 165),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("تعديل البيانات"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
