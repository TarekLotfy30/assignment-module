import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';

class QrCodeSection extends StatelessWidget {
  const QrCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "الكود الخاص بيك ",
          style: context.textThemeCustom.displayMedium?.copyWith(
            color: context.colorScheme.primary,
            fontSize: 25.sp,
          ),
        ),
        const SizedBox(height: 24),
        Image.asset(AppAssets.qrCode, height: 90),
      ],
    );
  }
}
