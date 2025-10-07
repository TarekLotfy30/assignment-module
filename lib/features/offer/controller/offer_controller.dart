import 'package:assignment/core/enum/egypt_cities.dart';
import 'package:assignment/core/enum/offer_types.dart';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:assignment/features/offer/data/repo/offer_repo.dart';
import 'package:get/get.dart';

class OfferController extends GetxController {
  OfferRepo offerRepo = OfferRepo();
  List<OfferModel> selectedOffers = [];
  static OfferController get to => Get.find();
  @override
  void onInit() {
    super.onInit();
    getOffersBySectionAndLocation(type, selectedRadio);
  }

  int selectedIndex = 0;
  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  String selectedRadio = EgyptCities.giza.getArabicName();
  OfferTypesEnum type = OfferTypesEnum.values.first;

  void selectedRadioButton(String value) {
    selectedRadio = value;
    update();
  }

  // void getAllOffersByLocation(String location) {
  //   offerRepo.getAllOffers().then((value) {
  //     value.where((element) => element.location == location).forEach((element) {
  //       selectedOffers.add(element);
  //     });
  //     update();
  //   });
  //   selectedOffers = [];
  // }

  void getOffersBySectionAndLocation(OfferTypesEnum type, String location) {
    selectedOffers = [];
    offerRepo.getAllOffers().then((value) {
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
