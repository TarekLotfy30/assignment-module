import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../controller/profile_bloc.dart';
import 'form_data.dart';
import 'form_title.dart';

// translate-me-ignore-all-file
class PersonalInformationSection extends StatefulWidget {
  const PersonalInformationSection({super.key});

  @override
  State<PersonalInformationSection> createState() =>
      _PersonalInformationSectionState();
}

class _PersonalInformationSectionState
    extends State<PersonalInformationSection> {
  late final ProfileBloc _blocInstance;
  late final GlobalKey _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _blocInstance = serviceLocator.get<ProfileBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "المعلومات الشخصية",
            style: context.textThemeCustom.displayMedium?.copyWith(
              color: context.colorScheme.primary,
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 24.h),
          BlocBuilder<ProfileBloc, ProfileState>(
            bloc: _blocInstance,
            builder: (context, state) {
              switch (state) {
                case InitialState():
                case SaveState():
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
                case EditState():
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 12,
                                children: [
                                  const FormTitle(title: "الاسم بالكامل رباعي"),
                                  TextFormField(),
                                  const FormTitle(title: "رقم التليفون"),
                                  TextFormField(),
                                  const FormTitle(title: "الصف الدراسي"),
                                  TextFormField(),
                                  const FormTitle(title: "رقم تليفون الام"),
                                  TextFormField(),
                                  const FormTitle(title: "المحافظة"),
                                  TextFormField(),
                                ],
                              ),
                            ),
                            const SizedBox(width: 138),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 12,
                                children: [
                                  const FormTitle(title: "الاسم المستخدم"),
                                  TextFormField(),
                                  const FormTitle(title: "البريد الاليكتروني"),
                                  TextFormField(),
                                  const FormTitle(title: "الشعبه العلميه"),
                                  TextFormField(),
                                  const FormTitle(title: "رقم التليفون الاب"),
                                  TextFormField(),
                                  const FormTitle(title: "المدرسة"),
                                  TextFormField(),
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
                              _blocInstance.add(SaveData());
                            },
                            child: const Text("حفظ "),
                          ),
                        ),
                      ],
                    ),
                  );
              }
            },
          ),
        ],
      ),
    );
  }
}
