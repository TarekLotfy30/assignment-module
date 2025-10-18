import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/offer_controller.dart';
import '../widgets/offer_page_body.dart';

@RoutePage()
class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  void initState() {
    super.initState();
    Get.find<OfferController>().getOffers(
      Get.find<OfferController>().selectedType,
      Get.find<OfferController>().selectedRadio,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(child: OfferPageBody()),
    );
  }
}

// class Shared {
//       final ColorScheme colorScheme ;
//     final Text textScheme

//      }
