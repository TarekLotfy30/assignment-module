import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/offer_model.dart';

class OfferRepo {
  OfferRepo();

  Future<List<OfferModel>> getOffers() async {
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
