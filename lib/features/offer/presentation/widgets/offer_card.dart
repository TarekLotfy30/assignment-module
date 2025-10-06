import 'package:assignment/core/constants/app_corners.dart';
import 'package:assignment/core/routing/app_router.gr.dart';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_card_details.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// translate-me-ignore-all-file
class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(OfferDetailsRoute(offer: offer)),
      borderRadius: BorderRadius.circular(AppCorners.buttonBorderRadius.r),
      child: OfferCardDetails(offer: offer),
    );
  }
}
