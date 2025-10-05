import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';

import '../../di/service_locator.dart';

/// Initialize all required services
/// This includes Firebase, SharedPreferences, DioHelper , location permissions
Future<void> initializeServices() async {
  log('Initializing services...', name: 'initServices');

  //Initialize BLoC observer
  //Bloc.observer = MyBlocObserver();
  //log('BLoC observer initialized', name: 'initServices');

  await Future.wait([
    // Initialize EasyLocalization before running the app
    EasyLocalization.ensureInitialized(),
    setupServiceLocator(),
  ]);
  log('setupServiceLocator initialized', name: 'initServices');
}
