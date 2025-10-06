import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
@RoutePage()
class OfferDetailsPage extends StatelessWidget {
  const OfferDetailsPage({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.padding24,
            horizontal: AppPadding.padding16,
          ),
          child: Column(
            children: [
              const BackButton(),
              Text(
                "تفاصيل العرض",
                style: context.textTheme.displayMedium?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
              Text(
                "تفاصيل العرض",
                style: context.textTheme.displayMedium?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
              OfferDetailsPage(offer: offer),
            ],
          ),
        ),
      ),
    );
  }
}
