import 'dart:convert';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:flutter/services.dart';

class OfferRepo {
  OfferRepo();

  Future<List<OfferModel>> getAllOffers() async {
    final String response = await rootBundle.loadString(
      'assets/json/offers_egypt.json',
    );
    final List<dynamic> data = jsonDecode(response);
    final List<OfferModel> offers = data
        .map((element) => OfferModel.fromJson(element))
        .toList();
    //log(offers[1].category!.label);
    return offers;
  }
}
