import 'package:assignment/core/constants/app_padding.dart';
import 'package:assignment/core/constants/app_spacing.dart';
import 'package:assignment/core/enum/egypt_cities.dart';
import 'package:assignment/core/helpers/extensions/theme_extension.dart';
import 'package:assignment/features/offer/controller/offer_controller.dart';
import 'package:assignment/features/offer/presentation/widgets/egypt_cities_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// translate-me-ignore-all-file
class EgyptCitiesScrollableSheet extends StatelessWidget {
  const EgyptCitiesScrollableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      maxChildSize: 1,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.padding16.w,
            vertical: AppPadding.padding18.h,
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "المنطقة",
                        style: context.textThemeCustom.displayLarge?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                      SizedBox(height: AppSpacing.spacing14),
                      ...List.generate(
                        EgyptCities.values.length,
                        (index) => EgyptCitiesList(index: index),
                      ),
                      SizedBox(height: AppSpacing.spacing14.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  OfferController.to.getOffersBySectionAndLocation(
                    OfferController.to.type,
                    OfferController.to.selectedRadio,
                  );
                  OfferController.to.changeIndex(0);
                  context.router.pop();
                },
                child: Text("تفعيل"),
              ),
            ],
          ),
        );
      },
    );
  }
}
