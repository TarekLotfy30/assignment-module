import 'package:assignment/features/offer/presentation/widgets/greeting_section.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_card.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_types.dart';
import 'package:assignment/features/offer/presentation/widgets/search_and_location_section.dart';
import 'package:assignment/features/offer/presentation/widgets/types_title_text.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: const GreetingSection()),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: const SearchAndLocationSection(),
                ),
              ),
              SliverToBoxAdapter(child: const TypesTitleText()),
              SliverToBoxAdapter(child: SizedBox(height: 14)),
              SliverToBoxAdapter(child: const OfferTypes()),
              SliverToBoxAdapter(child: SizedBox(height: 37)),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, index) => OfferCard(index: index),
                  childCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
