import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/enum/egypt_cities.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/features/offer/controller/offer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class EgyptCitiesList extends StatelessWidget {
  const EgyptCitiesList({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(bottom: 12),
      child: GetBuilder<OfferController>(
        init: OfferController(),
        builder: (OfferController controller) => RadioListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text(
            EgyptCities.values[index].getArabicName(),
            style: context.textThemeCustom.headlineMedium?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppPadding.padding12,
            vertical: AppPadding.padding14,
          ),
          value: EgyptCities.values[index].getArabicName(),
          onChanged: (value) {
            controller.selectedRadioButton(value!);
          },
          groupValue: controller.selectedRadio,
          activeColor: context.colorScheme.primary,
          dense: true,
          radioScaleFactor: 1.2,
          controlAffinity: ListTileControlAffinity.trailing,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
