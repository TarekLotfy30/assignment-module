import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/constants/app_padding.dart';
import '../../../../core/enum/offer_types.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../controller/offer_controller.dart';

// translate-me-ignore-all-file
class TypeChip extends StatelessWidget {
  const TypeChip({super.key, required this.type});

  final OfferTypesEnum type;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfferController>(
      init: OfferController(),
      builder: (controller) {
        final isSelected = controller.selectedType.index == type.index;
        final colorScheme = context.colorScheme;
        final textThemeCustom = context.textThemeCustom;
        return Padding(
          padding: type.index == 0
              ? EdgeInsets.zero
              : EdgeInsets.only(right: AppPadding.padding8.w),
          child: GestureDetector(
            onTap: () async {
              controller.changeValue(type);
              await controller.getOffers(type, controller.selectedRadio);
            },
            child: Chip(
              backgroundColor: isSelected
                  ? colorScheme.primary
                  : colorScheme.onPrimary,
              label: Text(
                type.getArabicName(),
                style: isSelected
                    ? textThemeCustom.headlineMedium?.copyWith(
                        color: colorScheme.onPrimary,
                      )
                    : textThemeCustom.headlineSmall?.copyWith(
                        color: colorScheme.outline,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
