import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/helpers/classes/app_regex.dart';
import '../../data/models/profile_model/profile_model.dart';
import '../controller/profile_bloc.dart';
import 'form_title.dart';

// translate-me-ignore-all-file
class ProfileEditForm extends StatefulWidget {
  const ProfileEditForm({
    super.key,
    required ProfileBloc blocInstance,
    required ProfileModel user,
  }) : _blocInstance = blocInstance,
       _user = user;

  final ProfileBloc _blocInstance;
  final ProfileModel _user;

  @override
  State<ProfileEditForm> createState() => _ProfileEditFormState();
}

class _ProfileEditFormState extends State<ProfileEditForm> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _nameController;
  late final TextEditingController _userNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneNumberController;
  late final TextEditingController _motherPhoneNumberController;
  late final TextEditingController _fatherPhoneNumberController;
  late final TextEditingController _schoolNameController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController(
      text: "${widget._user.firstName} ${widget._user.lastName}",
    );
    _userNameController = TextEditingController(text: widget._user.firstName);
    _emailController = TextEditingController(text: widget._user.email);
    // _phoneNumberController = TextEditingController(text: widget._user.phone);
    _motherPhoneNumberController = TextEditingController(
      text: widget._user.fatherMobile,
    );
    _fatherPhoneNumberController = TextEditingController();
    _schoolNameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                      controller: _nameController,
                      validator: (value) {
                        return null;
                      },
                      textDirection: TextDirection.rtl,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const FormTitle(title: "رقم التليفون"),
                    const IntlPhoneField(
                      textAlign: TextAlign.right,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      //controller: _phoneNumberController,
                      // disableLengthCheck: false,
                      // initialCountryCode: 'EG',
                      // onChanged: (phone) {
                      //   Logger.info(phone.completeNumber);
                      // },
                      // onCountryChanged: (country) {
                      //   Logger.info('Country changed to: ${country.code}');
                      // },
                      // validator: (value) {
                      //   if (value == null) {
                      //     return 'رقم التليفون مطلوب';
                      //   }
                      //   if (value.isValidNumber()) {
                      //     return 'رقم التليفون غير صحيح';
                      //   }
                      //   return null;
                      // },
                      // onSaved: (value) {},
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
                    const IntlPhoneField(
                      // controller: _motherPhoneNumberController,
                      // disableLengthCheck: true,
                      // initialCountryCode: 'EG',
                      // onChanged: (phone) {
                      //   // print(phone.completeNumber);
                      // },
                      // onCountryChanged: (country) {
                      //   //print('Country changed to: ' + country.code);
                      // },
                      // validator: (value) {
                      //   if (value == null) {
                      //     return 'رقم التليفون مطلوب';
                      //   }
                      //   return null;
                      // },
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      // onSaved: (value) {},
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
                      controller: _userNameController,
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
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'البريد الالكترونى مطلوب';
                        }
                        if (!AppRegex.isEmailValid(value)) {
                          return 'البريد الالكترونى غير صحيح';
                        }
                        if (!value.contains('@')) {
                          return 'البريد الالكترونى يجب استخدام @';
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
                    const IntlPhoneField(
                      // controller: _fatherPhoneNumberController,
                      // disableLengthCheck: true,
                      // initialCountryCode: 'EG',
                      // validator: (value) {
                      //   if (value == null) {
                      //     return 'رقم التليفون مطلوب';
                      //   }
                      //   return null;
                      // },
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const FormTitle(title: "المدرسة"),
                    TextFormField(
                      controller: _schoolNameController,
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
                  widget._blocInstance.add(
                    SaveData(
                      updatedProfileModel: widget._user.copyWith(
                        firstName: _nameController.text.split(" ").first,
                        lastName: _nameController.text.split(" ").last,
                        email: _emailController.text,
                        phone: _phoneNumberController.text,
                        fatherMobile: _motherPhoneNumberController.text,
                      ),
                    ),
                  );
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
