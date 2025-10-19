import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_corners.dart';
import '../../../../core/routing/app_router.gr.dart';
import '../../data/models/offer_model.dart';
import 'offer_card_details.dart';

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

// Get.put(AuthController()); // Needed globally (immediate)
// Get.lazyPut(() => HomeController()); // Needed later

// class HomePage extends StatelessWidget {
// final homeController = Get.find<HomeController>(); // will be created now
// final authController = Get.find<AuthController>(); // already exists
