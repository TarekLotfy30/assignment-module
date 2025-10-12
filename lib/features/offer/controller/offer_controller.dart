import 'package:get/get.dart';

import '../../../core/enum/egypt_cities.dart';
import '../../../core/enum/offer_types.dart';
import '../data/models/offer_model.dart';
import '../data/repo/offer_repo.dart';

class OfferController extends GetxController {
  OfferRepo offerRepo = OfferRepo();
  List<OfferModel> selectedOffers = [];

  EgyptCitiesEnum selectedRadio = EgyptCitiesEnum.values.first;
  OfferTypesEnum selectedType = OfferTypesEnum.values.first;

  void changeValue(OfferTypesEnum value) {
    selectedType = value;
    update();
  }

  void selectedRadioButton(EgyptCitiesEnum value) {
    selectedRadio = value;
    update();
  }

  Future<void> getOffers(OfferTypesEnum type, EgyptCitiesEnum location) async {
    selectedOffers = [];
    if (type.index == 0) {
      await _getAllOffersByLocation(location);
    } else {
      await _getCategoryOffers(location, type);
    }
  }

  Future<void> _getAllOffersByLocation(EgyptCitiesEnum location) async {
    await offerRepo.getOffers().then((value) {
      value
          .where((element) => element.location == location.getArabicName())
          .forEach((element) {
            selectedOffers.add(element);
          });
      update();
    });
  }

  Future<void> _getCategoryOffers(
    EgyptCitiesEnum location,
    OfferTypesEnum type,
  ) async {
    await offerRepo.getOffers().then((value) {
      value
          .where((element) {
            return element.location == location.getArabicName() &&
                element.categoryType.getArabicName() == type.getArabicName();
          })
          .forEach((element) {
            selectedOffers.add(element);
          });
      update();
    });
  }
}
