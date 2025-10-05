import 'package:assignment/core/constants/app_assets.dart';
import 'package:assignment/features/offer/presentation/widgets/back_icon_button.dart';
import 'package:assignment/features/offer/presentation/widgets/greeting_with_user_name.dart';
import 'package:assignment/features/offer/presentation/widgets/zaker_only_text.dart';
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
                const BackIconButton(),
                const GreetingWithUserName(),
                const ZakerOnlyText(),
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
