import 'package:assignment/core/constants/app_constants.dart';
import 'package:assignment/features/offer/data/offers_types.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_type_chip.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Greeting Section
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      AppAssets.openedGift,
                      fit: BoxFit.contain,
                      height: 120,
                      semanticsLabel: 'Offer Image',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        spacing: 8,
                        children: [
                          SvgPicture.asset(
                            AppAssets.arrowBack,
                            semanticsLabel: 'Back Icon',
                          ),
                          Text(
                            "اهلا بك محمد في العروض",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                          ),
                          Text(
                            "هذه العروض متاحة لطلاب ذاكر فقط.",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Search and Location Section
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 13.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff064698),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: const Text(
                                'القاهرة',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              AppAssets.locationFilter,
                              height: 16,
                              width: 16,
                              semanticsLabel: 'Filter Icon',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: SearchBar(
                          leading: SvgPicture.asset(
                            AppAssets.searchIcon,
                            semanticsLabel: 'Search Icon',
                          ),
                          hintText: 'ابحث بالمنطقة او النوع',
                          hintStyle: WidgetStateProperty.all<TextStyle>(
                            TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                          elevation: WidgetStateProperty.all<double>(0),
                          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(horizontal: 18),
                          ),
                          shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xffBBC9ED),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Offers List Section
              Text(
                "الأنواع",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              SizedBox(
                height: 44,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 6),
                    itemBuilder: (context, index) => OfferTypeChip(index),
                    itemCount: offersTypes.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                  ),
                ),
              ),
              // Expanded(
              //   child: ListView.separated(
              //     separatorBuilder: (context, index) => const Divider(),
              //     itemCount: offers.length,
              //     itemBuilder: (context, index) => OfferCard(index),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
