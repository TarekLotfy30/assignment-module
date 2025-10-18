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


// ass OfferController extends ChangeNotifier {
//   final OfferRepository _repo;
//   List<Offer> offers = [];
//   bool isLoading = false;

//   OfferController(this._repo);

//   Future<void> loadOffers() async {
//     isLoading = true;
//     notifyListeners();

//     offers = await _repo.fetchOffers();

//     isLoading = false;
//     notifyListeners();  
//   }
// }