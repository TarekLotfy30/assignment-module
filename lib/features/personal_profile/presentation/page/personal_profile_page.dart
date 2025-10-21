import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/widgets/background_container.dart';
import '../controller/profile_bloc.dart';
import '../widgets/address_section.dart';
import '../widgets/page_header.dart';
import '../widgets/personal_information_section.dart';
import '../widgets/profile_picture_section.dart';
import '../widgets/qr_code_section.dart';

@RoutePage()
class PersonalProfilePage extends StatefulWidget {
  const PersonalProfilePage({super.key});

  @override
  State<PersonalProfilePage> createState() => _PersonalProfilePageState();
}

class _PersonalProfilePageState extends State<PersonalProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: serviceLocator.get<ProfileBloc>(),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: BackgroundContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextHeader(),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QrCodeSection(),
                    SizedBox(height: 24),
                    PersonalInformationSection(),
                    SizedBox(height: 48),
                    ProfilePictureSection(),
                    SizedBox(height: 48),
                    AddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
