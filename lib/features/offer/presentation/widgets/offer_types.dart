import 'package:assignment/features/offer/data/models/offers_types.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_type_chip.dart';
import 'package:flutter/material.dart';

class OfferTypes extends StatelessWidget {
  const OfferTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: offersTypes
            .map(((e) => OfferTypeChip(offersTypes.indexOf(e))))
            .toList(),
      ),
    );
  }
}
