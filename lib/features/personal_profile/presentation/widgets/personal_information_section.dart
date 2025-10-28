import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
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

  @override
  void initState() {
    super.initState();
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
                case ProfileSaveLoading():
                case GetProfileDataLoading():
                  return const Center(child: CircularProgressIndicator());
                case GetProfileDataSuccessfully():
                  if (state.isEditing) {
                    return ProfileEditForm(
                      blocInstance: _blocInstance,
                      user: state.profileModel,
                    );
                  } else {
                    return InformationSection(
                      blocInstance: _blocInstance,
                      user: state.profileModel,
                    );
                  }
                case GetProfileDataError():
                  return const Center(child: Text("Error"));
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}
