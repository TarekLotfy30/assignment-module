import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:assignment/features/offer_details/presentation/widgets/offer_details_page_body.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
