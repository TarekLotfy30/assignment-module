import 'package:flutter/material.dart';
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
    sheetAnimationStyle: AnimationStyle(
      curve: Curves.easeIn,
      reverseCurve: Curves.easeInOut,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 200),
    ),
    backgroundColor: context.colorScheme.surfaceContainerHigh,
    clipBehavior: Clip.antiAliasWithSaveLayer,
  );
}
