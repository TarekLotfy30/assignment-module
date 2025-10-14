import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

import '../../../../core/models/response_model.dart';
import '../models/offer_model.dart';

class OfferRepo {
  const OfferRepo();

  Future<ResponseModel<OfferModel>> getOffers() async {
    final String response = await rootBundle.loadString(
      'assets/json/offers_egypt.json',
    );

    final Map<String, dynamic> jsonData = jsonDecode(response);

    log(jsonData.toString());
    return ResponseModel.fromJson(jsonData, OfferModel.fromJson);
  }
}
