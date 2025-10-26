import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../data/models/student_model/student_model.dart';
import '../controller/profile_bloc.dart';
import 'edit_section.dart';
import 'information_section.dart';

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
  late final GlobalKey<FormState> _formKey;

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
                  return InformationSection(
                    blocInstance: _blocInstance,
                    student: const StudentModel(),
                  );
                case GetStudentDataSuccessState():
                  return InformationSection(
                    blocInstance: _blocInstance,
                    student: state.studentModel,
                  );
                case EditState():
                  return EditSection(
                    formKey: _formKey,
                    blocInstance: _blocInstance,
                  );
                case GetStudentDataLoadingState():
                  return const Center(child: CircularProgressIndicator());
                case GetStudentDataErrorState():
                  return const Center(child: Text("Error"));
                default:
                  return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}
