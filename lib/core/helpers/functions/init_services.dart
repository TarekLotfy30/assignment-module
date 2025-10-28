import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../controller/bloc_observer.dart';
import '../../di/service_locator.dart';
import '../classes/app_logger.dart';

/// Initialize all required services
/// This includes Firebase, SharedPreferences, DioHelper , location permissions
Future<void> initializeServices() async {
  log('Initializing services...', name: 'initServices');

  //Initialize BLoC observer
  Bloc.observer = MyBlocObserver();
  Logger.info('BLoC observer initialized');

  await Future.wait([
    EasyLocalization.ensureInitialized(),
    setupServiceLocator(),
    Hive.initFlutter(),
    //Hive.openBox('users'),
  ]);
  log('setupServiceLocator initialized', name: 'initServices');
}
