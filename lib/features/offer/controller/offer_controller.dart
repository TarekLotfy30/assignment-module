import 'package:get/get.dart';

import '../../../core/enum/egypt_cities.dart';
import '../../../core/enum/offer_types.dart';
import '../data/models/offer_model.dart';
import '../data/repo/offer_repo.dart';

class OfferController extends GetxController {
  OfferRepo offerRepo = OfferRepo();
  List<OfferModel> selectedOffers = [];

  @override
  Future<void> onInit() async {
    super.onInit();
    await getOffersBySectionAndLocation(type, selectedRadio);
  }

  int selectedIndex = 0;
  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  String selectedRadio = EgyptCities.values.first.getArabicName(); //Enum this
  OfferTypesEnum type = OfferTypesEnum.values.first;

  void selectedRadioButton(String value) {
    selectedRadio = value;
    update();
  }

  // void getAllOffersByLocation(String location) {
  //   offerRepo.getAllOffers().then((value) {
  //     value.where((element) => element.location == location).forEach(
  //(element) {
  //       selectedOffers.add(element);
  //     });
  //     update();
  //   });
  //   selectedOffers = [];
  // }

  Future<void> getOffersBySectionAndLocation(
    OfferTypesEnum type,
    String location,
  ) async {
    selectedOffers = [];
    await offerRepo.getAllOffers().then((value) {
      value
          .where((element) {
            return element.location == location &&
                element.categoryType.getArabicName() == type.getArabicName();
          })
          .forEach((element) {
            selectedOffers.add(element);
          });

      update();
    });
  }
}
