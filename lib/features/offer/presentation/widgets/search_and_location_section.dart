import 'package:assignment/features/offer/presentation/widgets/location.dart';
import 'package:assignment/features/offer/presentation/widgets/search_by_type_or_area.dart';
import 'package:flutter/material.dart';

// translate-me-ignore-all-file
class SearchAndLocationSection extends StatelessWidget {
  const SearchAndLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(flex: 2, child: const SearchByTypeOrArea()),
        Expanded(child: const Location()),
      ],
    );
  }
}
