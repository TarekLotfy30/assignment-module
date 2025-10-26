import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/profile_bloc.dart';
import 'form_data.dart';
import 'form_title.dart';

// translate-me-ignore-all-file
class InformationSection extends StatelessWidget {
  const InformationSection({super.key, required ProfileBloc blocInstance})
    : _blocInstance = blocInstance;

  final ProfileBloc _blocInstance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
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
                      // translate-me-ignore-next-line
                      FormTitle(title: "المحافظه"),
                      FormData(data: "القاهره"),
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
            onPressed: () {
              _blocInstance.add(EditData());
            },
            child: const Text("تعديل البيانات"),
          ),
        ),
      ],
    );
  }
}
