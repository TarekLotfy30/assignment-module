import 'dart:developer';

import 'package:assignment/core/constants/app_constant.dart';
import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/features/offer/controller/offer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// translate-me-ignore-all-file
class OfferTypeChip extends StatelessWidget {
  const OfferTypeChip(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfferController>(
      init: OfferController(),
      builder: (controller) => Padding(
        padding: index == 0
            ? EdgeInsets.zero
            : const EdgeInsets.only(right: AppPadding.padding8),
        child: InkWell(
          onTap: () {
            controller.changeIndex(index);
            log('index: $index');
            log('controller.selectedIndex: ${controller.selectedIndex}');
          },
          child: Chip(
            backgroundColor: controller.selectedIndex == index
                ? Colors.blueAccent
                : Colors.white,
            labelPadding: const EdgeInsets.symmetric(
              horizontal: AppPadding.padding12,
            ),
            label: Text(
              AppConstant.offersTypes[index].title,
              style: controller.selectedIndex == index
                  ? context.textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                    )
                  : context.textTheme.headlineSmall?.copyWith(
                      color: Colors.blueAccent,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
