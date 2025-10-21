import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../features/offer/controller/offer_controller.dart';
import '../../features/personal_profile/presentation/controller/profile_bloc.dart';
import '../routing/app_router.dart';
import '../services/network/dio_consumer.dart';

final serviceLocator = GetIt.instance;

Future<void> setupServiceLocator() async {
  const logger = "ServiceLocator";
  try {
    // AppRouter
    log('Registering AppRouter', name: logger);
    serviceLocator.registerLazySingleton<AppRouter>(AppRouter.new);
    log('AppRouter registered', name: logger);

    // Dio and DioHelper
    log('Setting up Dio dependencies...', name: logger);
    final DioConsumer dioConsumer = DioConsumer();
    serviceLocator.registerSingleton<DioConsumer>(dioConsumer);
    log('DioConsumer registered as singleton', name: logger);

    // OfferController
    Get.put(OfferController());
    // ProfileController
    serviceLocator.registerSingleton<ProfileBloc>(ProfileBloc());

    log('Service Locator setup complete', name: logger);
  } catch (e, stackTrace) {
    log(
      '❌ Failed to initialize service locator: $e',
      name: 'ServiceLocator',
      error: e,
      stackTrace: stackTrace,
    );
    rethrow;
  }
}

// //  try {
// //       await _setupCoreDependencies();
// //       await _setupHelpers();
// //       await _setupRepositories();
// //       await _setupStateManagement();
// //       log('✅ Service locator initialized successfully');

//   /// Registers network-related dependencies (Dio, DioHelper).
//   static Future<void> _setupCoreDependencies() async {
//     // Dio instance with default configuration
//     _getIt.registerSingleton<Dio>(
//       Dio(BaseOptions(
//         connectTimeout: const Duration(seconds: 30),
//         receiveTimeout: const Duration(seconds: 30),
//         sendTimeout: const Duration(seconds: 30),
//       )),
//           instanceName: 'Dio',
//     signalsReady: true,
//     );

//  log('Dio registered', name: 'ServiceLocator');

//   // Register DioHelper with Dio dependency
//   getIt.registerSingleton<DioHelper>(
//     DioHelper(getIt<Dio>(instanceName: 'Dio')),
//     instanceName: 'DioHelper',
//   );
//   log('DioHelper registered', name: 'ServiceLocator');

//   }

//   /// Registers storage-related dependencies (SharedPreferences, LocalHelper).
// Future<void> _registerStorageDependencies() async {
//   log('Registering storage dependencies', name: 'ServiceLocator');

//   // Register SharedPreferences as an async singleton
//   getIt.registerSingletonAsync<SharedPreferences>(
//     () async {
//       final prefs = await SharedPreferences.getInstance();
//       log('SharedPreferences initialized', name: 'ServiceLocator');
//       return prefs;
//     },
//     instanceName: 'SharedPreferences',
//   );

//   // Wait for SharedPreferences to be ready before registering LocalHelper
//   await getIt.isReady<SharedPreferences>(instanceName: 'SharedPreferences');

//   // Register LocalHelper with SharedPreferences dependency
//   getIt.registerSingleton<LocalHelper>(
//     LocalHelper(getIt<SharedPreferences>(instanceName: 'SharedPreferences')),
//     instanceName: 'LocalHelper',
//   );
//   log('LocalHelper registered', name: 'ServiceLocator');
// }

// /// Registers repository dependencies (LoginRepoImpl).
// void _registerRepositories() {
//   log('Registering repositories', name: 'ServiceLocator');

//   // Register LoginRepoImpl with DioHelper and LocalHelper dependencies
//   getIt.registerSingleton<LoginRepoImpl>(
//     LoginRepoImpl(
//       dio: getIt<DioHelper>(instanceName: 'DioHelper'),
//       local: getIt<LocalHelper>(instanceName: 'LocalHelper'),
//     ),
//     instanceName: 'LoginRepoImpl',
//   );
//   log('LoginRepoImpl registered', name: 'ServiceLocator');
// }

//   /// Sets up repository layer
//   static Future<void> _setupRepositories() async {
//     _getIt.registerLazySingleton<HomeRepoImpl>(
//       () => HomeRepoImpl(_getIt<ApiService>()),
//     );

//     _getIt.registerLazySingleton<LoginRepoImpl>(
//       () => LoginRepoImpl(
//         dio: _getIt<DioHelper>(),
//         local: _getIt<SharedHelper>(),
//       ),
//     );

//     _getIt.registerLazySingleton<UserRepository>(
//       () => UserRepository(
//         _getIt<DioHelper>(),
//         _getIt<SharedHelper>(),
//       ),
//     );
//   }

//   /// Sets up state management (Cubits/BLoCs)
//   static Future<void> _setupStateManagement() async {
//     _getIt.registerFactory<UserCubit>(
//       () => UserCubit(_getIt<UserRepository>()),
//     );
//   }

//   // get => betrag3ly haga ana ansha2tha
//   // <T> => fe el makan da ba7ded el haga ely ana asnh2tha w 3ayzha terg3ly

// /*

// /// Usage in main.dart:
// ///
// /// void main() async {
// ///   WidgetsFlutterBinding.ensureInitialized();
// ///   await ServiceLocator.initialize();
// ///   runApp(MyApp());
// /// }
// ///
// /// Usage in other files:
// ///
// /// final dioHelper = ServiceLocator.get<DioHelper>();
// /// final userCubit = ServiceLocator.get<UserCubit>();

// void main() {
//   setupServiceLocator();

//   var singleton1 = getIt<MySingleton>();
//   var singleton2 = getIt<MySingleton>();

//   singleton1.someMethod();

//   // Check if both instances are the same
//   print(singleton1 == singleton2); // true
// }
// }*/

// /*
// in main () {
//   setupServiceLocator();
// }*/

// // void main() async {
// //   // Initialize the service locator
// //   await setupServiceLocator();

// //   // Get instances of DioHelper and LocalHelper
// //   final dioHelper1 = getIt<DioHelper>();
// //   final dioHelper2 = getIt<DioHelper>();

// //   final localHelper1 = getIt<LocalHelper>();
// //   final localHelper2 = getIt<LocalHelper>();

// //   // Print the hash codes of the instances
// //   print('DioHelper Instance 1: ${dioHelper1.hashCode}');
// //   print('DioHelper Instance 2: ${dioHelper2.hashCode}');
// //   print('Are DioHelper instances the same? ${identical(dioHelper1, dioHelper2)}');

// //   print('LocalHelper Instance 1: ${localHelper1.hashCode}');
// //   print('LocalHelper Instance 2: ${localHelper2.hashCode}');
// //   print('Are LocalHelper instances the same? ${identical(localHelper1, localHelper2)}');
// // }
