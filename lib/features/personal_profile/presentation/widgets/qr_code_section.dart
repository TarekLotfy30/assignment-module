import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';

// translate-me-ignore-all-file
class QrCodeSection extends StatelessWidget {
  const QrCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "الكود الخاص بيك ",
            style: context.textThemeCustom.displayMedium?.copyWith(
              color: context.colorScheme.primary,
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Image.asset(
              AppAssets.qrCode,
              fit: BoxFit.contain,
              height: 90,
            ),
          ),
        ],
      ),
    );
  }
}
