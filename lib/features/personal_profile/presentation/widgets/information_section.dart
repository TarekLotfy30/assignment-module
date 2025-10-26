import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/student_model/student_model.dart';
import '../controller/profile_bloc.dart';
import 'form_data.dart';
import 'form_title.dart';

// translate-me-ignore-all-file
class InformationSection extends StatelessWidget {
  const InformationSection({
    super.key,
    required ProfileBloc blocInstance,
    required this.student,
  }) : _blocInstance = blocInstance;

  final ProfileBloc _blocInstance;
  final StudentModel student;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                spacing: 24,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const FormTitle(title: "الاسم بالكامل رباعي"),
                      FormData(
                        data: "${student.firstName} ${student.lastName}",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const FormTitle(title: "رقم التليفون"),
                      FormData(data: student.phone ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const FormTitle(title: "الصف الدراسي"),
                      FormData(
                        data:
                            "${student.grades!.showedTitle} ${student.grades!.category!.showedTitle}",
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      FormTitle(title: "رقم تليفون الام"),
                      FormData(data: "01234567890"),
                    ],
                  ),
                  Row(
                    children: [
                      const FormTitle(title: "المحافظه"),
                      FormData(data: student.cities?.name ?? ""),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 138.w),
            Expanded(
              child: Column(
                spacing: 24,
                children: [
                  Row(
                    children: [
                      const FormTitle(title: "اسم المستخدم"),
                      FormData(
                        data: "${student.firstName} ${student.lastName}",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const FormTitle(title: "البريد الالكتروني"),
                      FormData(data: student.email ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const FormTitle(title: "الشعبة العلمية"),
                      FormData(data: student.branches?.showedTitle ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const FormTitle(title: "رقم تليفون الأب"),
                      FormData(data: student.fatherMobile ?? ""),
                    ],
                  ),
                  const Row(
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
