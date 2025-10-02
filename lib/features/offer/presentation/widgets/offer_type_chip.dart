import 'package:assignment/features/offer/data/offers_types.dart';
import 'package:flutter/material.dart';

class OfferTypeChip extends StatelessWidget {
  const OfferTypeChip(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: offersTypes[index].isSelected
          ? Colors.blueAccent
          : Colors.white,
      labelPadding: const EdgeInsets.symmetric(horizontal: 12.0),
      label: Text(
        offersTypes[index].title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: offersTypes[index].isSelected
              ? FontWeight.w500
              : FontWeight.w400,
          color: offersTypes[index].isSelected
              ? Colors.white
              : Colors.blueAccent,
        ),
      ),
    );
  }
}
