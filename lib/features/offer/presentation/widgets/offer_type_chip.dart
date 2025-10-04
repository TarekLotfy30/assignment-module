import 'package:assignment/features/offer/data/models/offers_types.dart';
import 'package:flutter/material.dart';

class OfferTypeChip extends StatelessWidget {
  const OfferTypeChip(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: index == 0 ? EdgeInsets.zero : const EdgeInsets.only(right: 8.0),
      child: Chip(
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
      ),
    );
  }
}
