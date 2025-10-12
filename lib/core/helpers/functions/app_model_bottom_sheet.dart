import 'package:flutter/material.dart';

import '../../constants/app_animation.dart';
import '../extensions/theme_extension.dart';

Future<void> openModalBottomSheet({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
}) async {
  await showModalBottomSheet(
    context: context,
    builder: builder,
    isDismissible: true,
    enableDrag: true,
    isScrollControlled: false,
    useSafeArea: true,
    sheetAnimationStyle: const AnimationStyle(
      curve: AppAnimations.entranceAnimationCurve,
      reverseCurve: AppAnimations.exitAnimationCurve,
    ),
    backgroundColor: context.colorScheme.surfaceContainerHigh,
    clipBehavior: Clip.antiAliasWithSaveLayer,
  );
}
