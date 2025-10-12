import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../widgets/offer_page_body.dart';

@RoutePage()
class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: OfferPageBody()));
  }
}
