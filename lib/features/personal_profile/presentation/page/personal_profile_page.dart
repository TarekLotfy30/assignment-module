import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/widgets/custom_background.dart';
import '../controller/profile_bloc.dart';
import '../widgets/address_section.dart';
import '../widgets/page_header.dart';
import '../widgets/personal_information_section.dart';
import '../widgets/profile_picture_section.dart';
import '../widgets/qr_code_section.dart';

@RoutePage()
class PersonalProfilePage extends StatelessWidget {
  const PersonalProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    log('building personal profile page');
    return BlocProvider.value(
      value: serviceLocator.get<ProfileBloc>()..add(GetData()),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: CustomBackground(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextHeader(),
              QrCodeSection(),
              PersonalInformationSection(),
              ProfilePictureSection(),
              AddressSection(),
            ],
          ),
        ),
      ),
    );
  }
}
