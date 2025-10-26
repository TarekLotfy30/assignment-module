import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/enum/egypt_cities.dart';
import '../../../core/enum/offer_types.dart';
import '../data/models/offer_model.dart';
import '../data/repo/offer_repo.dart';

class OfferController extends GetxController {
  OfferRepo offerRepo = const OfferRepo();
  TextEditingController searchController = TextEditingController();

  List<OfferModel> offersItems = [];
  List<OfferModel> filteredItems = [];

  bool isQueryEmpty = true;

  EgyptCitiesEnum selectedRadio = EgyptCitiesEnum.values.first;
  OfferTypesEnum selectedType = OfferTypesEnum.values.first;

  void onSearchChanged(String query) {
    if (query.isEmpty) {
      isQueryEmpty = true;
      filteredItems.clear();
    } else {
      isQueryEmpty = false;
      filteredItems = offersItems.where((item) {
        if (selectedType.index == 0) {
          return item.title!.contains(query);
        } else {
          return item.title!.contains(query) &&
              item.categoryType == selectedType;
        }
      }).toList();
    }
    update();
  }

  Future<void> toggleType(OfferTypesEnum value) async {
    selectedType = value;
    await getOffers(type: selectedType, location: selectedRadio);
    if (isQueryEmpty) {
      filteredItems.clear();
    } else {
      filteredItems = offersItems.where((item) {
        if (selectedType.index == 0) {
          return item.title!.contains(searchController.text);
        } else {
          return item.title!.contains(searchController.text) &&
              item.categoryType == selectedType;
        }
      }).toList();
    }
    update();
  }

  Future<void> toggleRadioButton(EgyptCitiesEnum value) async {
    selectedRadio = value;
    await getOffers(type: selectedType, location: selectedRadio);
    update();
  }

  Future<void> getOffers({
    required OfferTypesEnum type,
    required EgyptCitiesEnum location,
  }) async {
    offersItems = [];
    if (type.index == 0) {
      await _getAllOffers(location);
    } else {
      await _getCategoryOffers(location, type);
    }
  }

  Future<void> _getAllOffers(EgyptCitiesEnum location) async {
    await offerRepo.getOffers().then((value) {
      value.data
          .where((element) => element.location == location.getArabicName())
          .forEach((element) {
            offersItems.add(element);
          });
      update();
    });
  }

  Future<void> _getCategoryOffers(
    EgyptCitiesEnum location,
    OfferTypesEnum type,
  ) async {
    await offerRepo.getOffers().then((value) {
      value.data
          .where((element) {
            return element.location == location.getArabicName() &&
                element.categoryType.getArabicName() == type.getArabicName();
          })
          .forEach((element) {
            offersItems.add(element);
          });
      update();
    });
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}

// aOfferController extends ChangeNotifier {
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
