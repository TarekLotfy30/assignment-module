import 'package:assignment/app/assignment_app.dart';
import 'package:assignment/core/helpers/functions/configure_system_ui.dart';
import 'package:assignment/core/helpers/functions/init_services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureSystemUI();
  await initializeServices();
  
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('ar'),
      startLocale: Locale('ar'),
      child: AssignmentApp(),
    ),
  );
}
