import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_elevation.dart';
import '../constants/app_padding.dart';
import '../constants/app_spacing.dart';
import '../helpers/extensions/theme_extension.dart';
import 'build_optimized_svg.dart';

abstract class BaseDialog extends StatelessWidget {
  const BaseDialog({super.key});

  /// Shows a generic dialog with custom content and animations
  ///
  /// This function provides a standardized way to show dialogs
  ///
  /// @param context The BuildContext where the dialog should appear
  /// @param pageBuilder Builder function to create the dialog content
  /// @param [barrierDismissible] Whether tapping outside the dialog dismisses
  /// @param [transitionDuration] Duration for the dialog animation
  /// @param [blurAmount] The amount of blur effect (sigmaX and sigmaY)
  /// @return A Future that completes when the dialog is closed,
  Future<T?> show<T>(
    BuildContext context, {
    Duration transitionDuration = const Duration(milliseconds: 500),
    double blurAmount = 3.0,
    bool barrierDismissible = true,
  }) {
    return showGeneralDialog(
      context: context,
      // The builder simply returns the concrete instance of the dialog.
      // Since this class (and its subclasses) are Widgets, we can pass `this`.
      pageBuilder: (ctx, anim1, anim2) => this,
      transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blurAmount * anim1.value,
          sigmaY: blurAmount * anim1.value,
        ),
        child: FadeTransition(opacity: anim1, child: child),
      ),
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.black54,
      transitionDuration: transitionDuration,
    );
  }

  // The build method remains abstract, forcing subclasses to define their UI.
  @override
  Widget build(BuildContext context);
}

class AlertDialogBox extends BaseDialog {
  const AlertDialogBox({required this.title, required this.content, super.key});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: Text(content, textAlign: TextAlign.center),
      actions: [
        IconButton(
          // Make the button functional
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 1,
      backgroundColor: context.colorScheme.surface,
      titleTextStyle: context.textThemeCustom.displayLarge?.copyWith(
        color: context.colorScheme.primary,
      ),
      contentTextStyle: context.textThemeCustom.titleSmall?.copyWith(
        color: context.colorScheme.tertiary,
      ),
      actionsAlignment: MainAxisAlignment.start,
      actionsPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      actionsOverflowAlignment: OverflowBarAlignment.start,
      actionsOverflowDirection: VerticalDirection.down,
      insetPadding: const EdgeInsets.symmetric(horizontal: 40),
    );
  }
}

class SimpleDialogBox extends BaseDialog {
  const SimpleDialogBox({
    this.onTap,
    required this.topAssetPath,
    required this.contentAssetPath,
    required this.titleOne,
    required this.titleTwo,
    required this.contentOne,
    required this.contentTwo,
    required this.contentThree,
    super.key,
  });

  final void Function()? onTap;
  final String topAssetPath;
  final String contentAssetPath;
  final String titleOne;
  final String titleTwo;
  final String contentOne;
  final String contentTwo;
  final String contentThree;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsetsGeometry.symmetric(
        horizontal: AppPadding.padding32.w,
        vertical: AppPadding.padding24.h,
      ),
      constraints: BoxConstraints(maxHeight: 272.h, maxWidth: 358.w),
      elevation: AppElevation.dialogElevation,
      children: [
        BuildOptimizedSvg(contentAssetPath),
        SizedBox(height: AppSpacing.spacing24.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: titleOne,
                style: context.textThemeCustom.displayLarge?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
              TextSpan(
                text: titleTwo,
                style: context.textThemeCustom.displayLarge?.copyWith(
                  color: context.colorScheme.onSecondaryContainer,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppSpacing.spacing12.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: contentOne,
                style: context.textThemeCustom.titleSmall?.copyWith(
                  color: context.colorScheme.tertiary,
                ),
              ),
              TextSpan(
                text: contentTwo,
                style: context.textThemeCustom.titleLarge?.copyWith(
                  color: context.colorScheme.tertiary,
                ),
              ),
              TextSpan(
                text: contentThree,
                style: context.textThemeCustom.titleSmall?.copyWith(
                  color: context.colorScheme.tertiary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// AlertDialogBox(
//                   title: 'Action Required',
//         content: 'Please confirm this important action before proceeding.',
//                 ).show(context);
