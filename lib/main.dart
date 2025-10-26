// ignore: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app/assignment_app.dart';
import 'core/helpers/functions/configure_system_ui.dart';
import 'core/helpers/functions/init_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureSystemUI();
  await initializeServices();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      child: const AssignmentApp(),
    ),
  );
}
