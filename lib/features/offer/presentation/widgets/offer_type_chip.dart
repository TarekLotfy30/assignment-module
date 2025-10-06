import 'dart:developer';
import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/enum/offer_types.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/features/offer/controller/offer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

// translate-me-ignore-all-file
class OfferTypeChip extends StatelessWidget {
  const OfferTypeChip({super.key, required this.type});

  final OfferTypesEnum type;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfferController>(
      init: OfferController(),
      builder: (controller) => Padding(
        padding: type.index == 0
            ? EdgeInsets.zero
            : const EdgeInsets.only(right: AppPadding.padding8),
        child: GestureDetector(
          onTap: () {
            controller.changeIndex(type.index);
            log('index: $type.index');
            log('controller.selectedIndex: ${controller.selectedIndex}');
            //controller.getByCategory();
          },
          child: Chip(
            backgroundColor: controller.selectedIndex == type.index
                ? context.colorScheme.primary
                : context.colorScheme.onPrimary,
            label: Text(
              type.getArabicName(),
              style: controller.selectedIndex == type.index
                  ? context.textTheme.headlineMedium?.copyWith(
                      color: context.colorScheme.onPrimary,
                    )
                  : context.textTheme.headlineSmall?.copyWith(
                      color: context.colorScheme.tertiary,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
