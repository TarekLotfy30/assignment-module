import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/enum/egypt_cities.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../controller/offer_controller.dart';
import 'egypt_cities_list.dart';

// translate-me-ignore-all-file
class EgyptCitiesScrollableSheet extends StatelessWidget {
  const EgyptCitiesScrollableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OfferController>();
    return DraggableScrollableSheet(
      initialChildSize: 1,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.padding16.w,
            vertical: AppPadding.padding16.h,
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'المنطقة',
                        style: context.textThemeCustom.displayLarge?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.spacing12),
                      ...List.generate(
                        EgyptCitiesEnum.values.length,
                        (index) => EgyptCitiesList(index: index),
                      ),
                      SizedBox(height: AppSpacing.spacing24.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.spacing24.h),
              ElevatedButton(
                onPressed: () async {
                  controller.toggleType(controller.selectedType);
                  if (context.mounted) {
                    context.router.pop();
                  }
                },
                child: const Text('تفعيل'),
              ),
            ],
          ),
        );
      },
    );
  }
}
