import 'package:assignment/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// translate-me-ignore-all-file
class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      margin: const EdgeInsets.only(bottom: 24.0),
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              AspectRatio(
                aspectRatio: 358 / 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(AppAssets.cover, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                right: 16.0,
                bottom: -30.0,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.asset(
                    AppAssets.profile,
                    fit: BoxFit.scaleDown,
                  ).image,
                  backgroundColor: Colors.transparent,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffE9FFEE),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                  ),
                  child: const Text(
                    "🔥 خصم 15%",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff06B694),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 39.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'أبو شقرة',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  'استمتع بخضم 15% علي وجبات المطعم عند شرائك وجبة بقيمة 500 جنيه او اكثر.',
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffECF0FA),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AppAssets.locationFilter,
                        height: 14,
                        width: 14,
                        semanticsLabel: 'Filter Icon',
                        colorFilter: ColorFilter.mode(
                          const Color(0xff064698),
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        'القاهرة',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff064698),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
