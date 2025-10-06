import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_page_body.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
@RoutePage()
class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.padding16,
            vertical: AppPadding.padding24,
          ),
          child: OfferPageBody(),
        ),
      ),
    );
  }
}
