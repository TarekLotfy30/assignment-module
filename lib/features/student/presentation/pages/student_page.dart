import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../../../core/models/custom_list_tile.dart';
import '../../../../core/widgets/custom_list_tile.dart';

// translate-me-ignore-all-file
@RoutePage()
class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Drawer(
              backgroundColor: context.colorScheme.primary,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 44.h,
                        horizontal: 26.w,
                      ),
                      child: SizedBox(
                        height: 118.h,
                        width: 143.w,
                        child: Image.asset(
                          AppAssets.ashtarLogo,
                          fit: BoxFit.contain,
                          alignment: AlignmentGeometry.topRight,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: 22.h)),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => CustomListTile(options[index]),
                      childCount: options.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: AutoRouter()),
        ],
      ),
    );
  }
}
