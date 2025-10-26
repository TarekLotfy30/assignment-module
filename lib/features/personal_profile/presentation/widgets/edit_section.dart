import 'package:flutter/material.dart';

import '../controller/profile_bloc.dart';
import 'form_title.dart';

// translate-me-ignore-all-file
class EditSection extends StatelessWidget {
  const EditSection({
    super.key,
    required GlobalKey<FormState> formKey,
    required ProfileBloc blocInstance,
  }) : _formKey = formKey,
       _blocInstance = blocInstance;

  final GlobalKey<FormState> _formKey;
  final ProfileBloc _blocInstance;

  @override
  Widget build(BuildContext context) {
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
                    TextFormField(
                      initialValue: "احمد محمد القنصل السيد",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الاسم مطلوب';
                        }
                        return null;
                      },
                      onSaved: (value) {},
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      textDirection: TextDirection.rtl,
                    ),
                    const FormTitle(title: "رقم التليفون"),
                    TextFormField(),
                    const FormTitle(title: "الصف الدراسي"),
                    DropdownMenu(
                      label: const Text("ادخل الصف الدراسى"),
                      initialSelection: "الثالث الثانوي",
                      onSelected: (value) {},
                      width: double.infinity,
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(
                          value: 'الثالث الثانوي',
                          label: "الثالث الثانوي",
                        ),
                        DropdownMenuEntry(
                          value: "الثانى الثانوي",
                          label: "الثانى الثانوي",
                        ),
                        DropdownMenuEntry(
                          value: "الأول الثانوي",
                          label: "الأول الثانوي",
                        ),
                      ],
                    ),
                    const FormTitle(title: "رقم تليفون الام"),
                    TextFormField(),
                    const FormTitle(title: "المحافظة"),
                    DropdownMenu(
                      label: const Text("ادخل المحافظة"),
                      initialSelection: "القاهره",
                      onSelected: (value) {},
                      width: double.infinity,
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(value: 'القاهره', label: "القاهره"),
                        DropdownMenuEntry(value: "الجيزة", label: "الجيزة"),
                        DropdownMenuEntry(
                          value: "الاسكندرية",
                          label: "الاسكندرية",
                        ),
                      ],
                    ),
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
                    TextFormField(
                      initialValue: "احمد محمد",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الاسم مطلوب';
                        }
                        return null;
                      },
                      onSaved: (value) {},
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      textDirection: TextDirection.rtl,
                    ),
                    const FormTitle(title: "البريد الاليكتروني"),
                    TextFormField(
                      initialValue: "ahmed@gmail.com",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'البريد مطلوب';
                        }
                        return null;
                      },
                      onSaved: (value) {},
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const FormTitle(title: "الشعبه العلميه"),
                    DropdownMenu(
                      label: const Text("ادخل الشعبه العلميه"),
                      initialSelection: "علمى",
                      onSelected: (value) {},
                      width: double.infinity,
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(value: 'علمى', label: "علمى"),
                        DropdownMenuEntry(value: "أدبى", label: "ادبى"),
                      ],
                    ),
                    const FormTitle(title: "رقم التليفون الاب"),
                    TextFormField(),
                    const FormTitle(title: "المدرسة"),
                    TextFormField(
                      initialValue: "مناره القاهرة",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'اسم المدرسة مطلوب';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      textDirection: TextDirection.rtl,
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
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _blocInstance.add(SaveData());
                }
              },
              child: const Text("حفظ "),
            ),
          ),
        ],
      ),
    );
  }
}
