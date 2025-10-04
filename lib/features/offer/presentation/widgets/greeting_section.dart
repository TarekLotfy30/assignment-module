import 'package:assignment/core/constants/app_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// translate-me-ignore-all-file
class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                InkWell(
                  onTap: () => context.router.pop(),
                  child: SvgPicture.asset(
                    AppAssets.arrowBack,
                    semanticsLabel: 'Back Icon',
                  ),
                ),
                Text(
                  "اهلا بك محمد في العروض",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "هذه العروض متاحة لطلاب ذاكر فقط.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: FittedBox(
            fit: BoxFit.contain,
            child: SvgPicture.asset(
              AppAssets.openedGift,
              semanticsLabel: 'Offer Image',
            ),
          ),
        ),
      ],
    );
  }
}
