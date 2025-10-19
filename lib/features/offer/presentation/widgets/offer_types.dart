import 'package:flutter/material.dart';

import '../../../../core/enum/offer_types.dart';
import 'type_chip.dart';

class OfferTypes extends StatelessWidget {
  const OfferTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: OfferTypesEnum.values
            .map((value) => TypeChip(type: value))
            .toList(),
      ),
    );
  }
}
