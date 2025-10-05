import 'package:flutter/material.dart';
// calculate the :
// 1 - scaleFactor
// 2- responsive font size
// 3- (min , max) font size

// The idea is to scale the font size based on the screen width of the device.
// This means the text will appear proportionally sized on different devices.
/// Calculates the responsive font size based on the screen width.
double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  final double scaleFactor = getScaleFactor(context);
  final double responsiveFontSize = fontSize * scaleFactor;
  // The font size cannot go below 80% of the base font size
  // The font size cannot exceed 120% of the base font size
  // These limits ensure that the font size remains within a reasonable range,
  // even on very small or very large screens.
  // lw 2alet ha2el 3an 20% w lw zet hazwed 20% fe el meya bas
  final double lowerLimit = fontSize * 0.8; // may2lsh 3an 80 % mn el font size
  final double upperLimit = fontSize * 1.2; // 120 % mn el font size
  //The clamp method is used to restrict the responsiveFontSize within the
  // lowerLimit and upperLimit...If responsiveFontSize is below lowerLimit,
  // it will be set to lowerLimit ... If responsiveFontSize is above upperLimit,
  // it will be set to upperLimit
  // If the screen width is 500 and the base font size is 16, the output will be
  // baseFontSize: 16 , lowerLimit: 12.8 , upperLimit 19.2
  // responsiveFontSize : 20 , finalFontSize : 19.2
  // Ensure the font size stays within the defined limits
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

/// Calculates the scaling factor based on the screen width.
double getScaleFactor(BuildContext context) {
  final double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    // el 400 dy el no2ta el 3ala asasha ba7ded el width zad wla la2
    // el kema el ha7seb 3aleha al taghyer msh el 600
    // lw zad 3an el 400 el fontsize hayzed
    return width / 400; // Small screens (e.g., mobile phones)
  } else if (width < 900) {
    // el 900 dy 3ala hasab el 7agm beta3 el tablet w el desktop ka breakPoints fe el Adaptive Layout el enta 7ato
    return width /
        600; //(700) // Medium screens (e.g., tablets) // betkhtar kema fe el nos maben el 600 el hya mobile w el 900
  } else {
    return width / 900; //(1000) // Large screens (e.g., desktops)
  }

  // el 900 w el 600 dol el no2at ely 3adha bazwed aw ban2as el size

  // For example:
  // On a screen with a width of 500, the scaling factor would be
  // 500 / 400 = 1.25
  // If the base font size is 16, the responsive font size would be
  // 16 * 1.25 = 20

  // betkhtar kema fe el nos maben el 600 el hya mobile w el 900
}

// When converting a padding value of 20px from Figma to Flutter, you have a few approaches depending on how closely you want to match the design and how responsive you want your UI to be.
// Basic Approach: Direct Conversion
// The simplest approach is to use the same value directly in Flutter:

// padding: EdgeInsets.all(20),

// This works reasonably well for many cases since Flutter's logical pixels often correspond fairly closely to design pixels on standard density devices.
// Scaling Approach: For Better Responsiveness
// For a more responsive approach that adapts to different screen sizes:
// dart// Using a scale factor based on screen width

// padding: EdgeInsets.all(20 * getScaleFactor(context)),

// Using a Design System Approach
// Many development teams create a spacing system to standardize padding
// throughout the app:
//  In a constants file
class Spacing {
  static const double xs = 4;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
  static const double xl = 32;
}

// In your widget
//padding: EdgeInsets.all(Spacing.m), // closest to your 20px

// Using Device Pixel Ratio (More Advanced)
// For very precise matching:

// Convert design pixels to logical pixels based on a reference device
// double designToLogical(double designValue) {
//   const double baseWidth = 375; // Reference device width in Figma (like iPhone X)
//   final double currentWidth = MediaQuery.of(context).size.width;
//   return (designValue * currentWidth) / baseWidth;
// }

// Usage
// padding: EdgeInsets.all(designToLogical(20));
