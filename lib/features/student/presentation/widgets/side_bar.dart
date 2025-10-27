import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/theme_extension.dart';
import '../../data/models/list_tile_options_model.dart';
import 'ashtar_logo.dart';
import 'custom_list_tile.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          bottomLeft: Radius.circular(24.r),
        ),
      ),
      backgroundColor: context.colorScheme.primary,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: AshtarLogo()),
          const SliverToBoxAdapter(child: SizedBox(height: 22)),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => CustomListTile(options[index]),
              childCount: options.length,
            ),
          ),
        ],
      ),
    );
  }
}
