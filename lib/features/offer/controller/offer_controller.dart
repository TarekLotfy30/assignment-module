import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:assignment/features/offer/data/repo/offer_repo.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OfferController extends GetxController {
  OfferRepo offerRepo = OfferRepo();
  int selectedIndex = 0;
  List<OfferModel> allOffers = [];
  List<OfferModel> selectedOffers = [];

  @override
  void onInit() {
    super.onInit();
    getAllOffersByLocation('القاهرة');
    //getAllOffers(); 
  }

  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  void getAllOffers() {
    offerRepo.getAllOffers().then((value) {
      allOffers = value;
      update();
    });
  }

  void getAllOffersByLocation(String location) {
    offerRepo.getAllOffers().then((value) {
      value.where((element) => element.location == location).forEach((element) {
        selectedOffers.add(element);
      });
      update();
    });
  }
}
