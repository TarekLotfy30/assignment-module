import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/constants/app_padding.dart';
import '../../../../core/enum/egypt_cities.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../controller/offer_controller.dart';

class EgyptCitiesList extends StatelessWidget {
  const EgyptCitiesList({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsetsGeometry.only(bottom: 12, left: 25),
      child: GetBuilder<OfferController>(
        builder: (controller) => RadioListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text(
            EgyptCitiesEnum.values[index].getArabicName(),
            style: context.textThemeCustom.headlineSmall?.copyWith(
              color: colorScheme.primary,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppPadding.padding12.w,
            vertical: AppPadding.padding14.h,
          ),
          value: EgyptCitiesEnum.values[index],
          groupValue: controller.selectedRadio,
          onChanged: (value) {
            controller.toggleRadioButton(value!);
          },
          activeColor: context.colorScheme.primary,
          dense: true,
          radioScaleFactor: 1.2,
          controlAffinity: ListTileControlAffinity.trailing,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          tileColor: colorScheme.surfaceContainer,
          selectedTileColor: colorScheme.surfaceContainer,
        ),
      ),
    );
  }
}
