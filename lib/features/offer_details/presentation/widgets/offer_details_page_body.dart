import 'package:assignment/core/constants/app_assets.dart';
import 'package:assignment/core/constants/app_icon.dart';
import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/core/helpers/functions/app_dialog.dart';
import 'package:assignment/core/widgets/build_back_button.dart';
import 'package:assignment/features/offer/data/models/offer_model.dart';
import 'package:assignment/features/offer/presentation/widgets/offer_card_details.dart';
import 'package:assignment/features/offer_details/presentation/widgets/available_branches.dart';
import 'package:assignment/features/offer_details/presentation/widgets/details_of_the_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// translate-me-ignore-all-file
class OfferDetailsPageBody extends StatelessWidget {
  const OfferDetailsPageBody({super.key, required this.offer});

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.padding20,
          horizontal: AppPadding.padding16,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BuildBackIcon(),
                    SizedBox(height: AppSpacing.spacing8.h),
                    Text(
                      "تفاصيل العروض",
                      style: context.textThemeCustom.displayMedium?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                    SizedBox(height: AppSpacing.spacing14.h),
                    OfferCardDetails(offer: offer),
                    SizedBox(height: AppSpacing.spacing14.h),
                    DetailsOfTheOffer(offer: offer),
                    SizedBox(height: AppSpacing.spacing24.h),
                    AvailableBranches(offer: offer),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                SimpleDialogBox(
                  topAssetPath: AppIcons.close,
                  contentAssetPath: AppAssets.openedGift,
                  titleOne: 'مبروك لقد حصلت علي خصم ',
                  titleTwo: "15%",
                  contentOne: 'أظهر هذا الكود',
                  contentTwo: ' AMSA14378 ',
                  contentThree:
                      'عند زيارتك احدي فروع مكتبات سمير و علي و استفيد بالعرض',
                ).show(context);
              },
              child: Text("احصل على الهدية"),
            ),
          ],
        ),
      ),
    );
  }
}
