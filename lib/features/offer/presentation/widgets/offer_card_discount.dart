import 'package:flutter/material.dart';

import '../../../../core/constants/app_corners.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../data/models/offer_model.dart';

// translate-me-ignore-all-file
class OfferCardDiscount extends StatelessWidget {
  const OfferCardDiscount({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: context.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppCorners.buttonBorderRadius),
            bottomRight: Radius.circular(AppCorners.buttonBorderRadius),
          ),
        ),
        child: Text(
          '🔥 خصم ${offer.discount}%',
          style: context.textThemeCustom.titleMedium?.copyWith(
            color: context.colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
