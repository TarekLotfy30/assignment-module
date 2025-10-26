import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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
      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الاسم مطلوب';
                        }
                        return null;
                      },
                      textDirection: TextDirection.rtl,
                    ),
                    const FormTitle(title: "رقم التليفون"),
                    IntlPhoneField(
                      disableLengthCheck: true,
                      initialCountryCode: 'EG',
                      onChanged: (phone) {
                        // print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        //print('Country changed to: ' + country.code);
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'رقم التليفون مطلوب';
                        }
                        if (value.isValidNumber()) {
                          return 'رقم التليفون غير صحيح';
                        }
                        return null;
                      },
                      onSaved: (value) {},
                    ),
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
                    IntlPhoneField(
                      disableLengthCheck: true,
                      initialCountryCode: 'EG',
                      onChanged: (phone) {
                        // print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        //print('Country changed to: ' + country.code);
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'رقم التليفون مطلوب';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onSaved: (value) {},
                    ),
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الاسم مطلوب';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textDirection: TextDirection.rtl,
                    ),
                    const FormTitle(title: "البريد الالكترونى"),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'البريد مطلوب';
                        }
                        return null;
                      },
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
                    IntlPhoneField(
                      disableLengthCheck: true,
                      initialCountryCode: 'EG',
                      onChanged: (phone) {
                        // print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        //print('Country changed to: ' + country.code);
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'رقم التليفون مطلوب';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const FormTitle(title: "المدرسة"),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'اسم المدرسة مطلوب';
                        }
                        return null;
                      },
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
