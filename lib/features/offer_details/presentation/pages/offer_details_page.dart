import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../offer/data/models/offer_model.dart';
import '../widgets/offer_details_page_body.dart';

// translate-me-ignore-all-file
@RoutePage()
class OfferDetailsPage extends StatelessWidget {
  const OfferDetailsPage({super.key, required this.offer});

  final OfferModel offer;

  @override

  Widget build(BuildContext context) {
    return Scaffold(body: OfferDetailsPageBody(offer: offer));
  }
}
