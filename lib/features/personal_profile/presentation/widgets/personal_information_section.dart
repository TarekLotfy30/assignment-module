import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../data/models/profile_model/profile_model.dart';
import '../controller/profile_bloc.dart';
import 'information_section.dart';
import 'profile_edit_form.dart';

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
                case ProfileInitial():
                case ProfileLoading():
                  return const Center(child: CircularProgressIndicator());
                case ProfileLoaded():
                  return InformationSection(
                    blocInstance: _blocInstance,
                    user: state.profileModel,
                  );
                case ProfileError():
                  return const Center(child: Text("Error"));
                case ProfileEditing():
                  return ProfileEditForm(
                    formKey: _formKey,
                    blocInstance: _blocInstance,
                  );
                case ProfileSaveSuccess():
                  return InformationSection(
                    blocInstance: _blocInstance,
                    user: const ProfileModel(),
                  );
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
