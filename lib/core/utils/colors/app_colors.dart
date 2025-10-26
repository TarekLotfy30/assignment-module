import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  // ========== PRIMARY BLUE PALETTE ==========
  static const Color blue50 = Color(0xFFE8F0FA);
  static const Color blue100 = Color(0xFFC5DAF3);
  static const Color blue200 = Color(0xFFBBC9ED);
  static const Color blue300 = Color(0xFF77AAE3);
  static const Color blue400 = Color(0xFF507CB5);
  static const Color blue500 = Color(0xFF064698); // Main primary
  static const Color blue600 = Color(0xFF053E88);
  static const Color blue700 = Color(0xFF043571);
  static const Color blue800 = Color(0xFF032C5A);
  static const Color blue900 = Color(0xFF021E3D);

  // ========== TEAL/TURQUOISE PALETTE ==========
  static const Color teal50 = Color(0xFFE6F9F5);
  static const Color teal100 = Color(0xffE9FFEE);
  static const Color teal200 = Color(0xFF94E6D5);
  static const Color teal300 = Color(0xFF69DCC4);
  static const Color teal400 = Color(0xFF48D5B7);
  static const Color teal500 = Color(0xFF06B694); // Main teal
  static const Color teal600 = Color(0xFF05A485);
  static const Color teal700 = Color(0xFF048E70);
  static const Color teal800 = Color(0xFF03785C);
  static const Color teal900 = Color(0xFF025539);

  // ========== LIGHT BLUE PALETTE ==========
  static const Color lightBlue50 = Color(0xFFF2F7FE);
  static const Color lightBlue100 = Color(0xFFE6EFFD);
  static const Color lightBlue200 = Color(0xFFD5E4FB);
  static const Color lightBlue300 = Color(0xFFC4D9F9);
  static const Color lightBlue400 = Color(0xFFB7D1F6);
  static const Color lightBlue500 = Color(0xFFBBC9ED); // Main light blue
  static const Color lightBlue600 = Color(0xFFA5B5DB);
  static const Color lightBlue700 = Color(0xFF8F9FC9);
  static const Color lightBlue800 = Color(0xFF7989B7);
  static const Color lightBlue900 = Color(0xFF5D6C93);

  // ========== AZURE BLUE PALETTE ==========
  static const Color azure50 = Color(0xFFE5F5FB);
  static const Color azure100 = Color(0xFFBEE6F5);
  static const Color azure200 = Color(0xFF93D5EF);
  static const Color azure300 = Color(0xFF67C4E9);
  static const Color azure400 = Color(0xFF47B7E4);
  static const Color azure500 = Color(0xFF507CB5); // Main azure
  static const Color azure600 = Color(0xFF006FA0);
  static const Color azure700 = Color(0xFF005F89);
  static const Color azure800 = Color(0xFF004F72);
  static const Color azure900 = Color(0xFF00364E);

  // ========== YELLOW/GOLD PALETTE ==========
  static const Color yellow50 = Color(0xFFFFF9E6);
  static const Color yellow100 = Color(0xFFFFF1BF);
  static const Color yellow200 = Color(0xFFFFE894);
  static const Color yellow300 = Color(0xFFFFDF69);
  static const Color yellow400 = Color(0xFFFFD849);
  static const Color yellow500 = Color(0xFFFFC800); // Main yellow
  static const Color yellow600 = Color(0xFFFFB800);
  static const Color yellow700 = Color(0xFFFFA400);
  static const Color yellow800 = Color(0xFFFF9000);
  static const Color yellow900 = Color(0xFFFF6F00);

  // ========== GRAYSCALE PALETTE ==========
  static const Color gray50 = Color(0xFFF5F5F5);
  static const Color gray100 = Color(0xFFE8E8E8);
  static const Color gray200 = Color(0xFFD4D4D4);
  static const Color gray300 = Color(0xFFBBBBBB);
  static const Color gray400 = Color(0xFF9AA1AB); // Main gray
  static const Color gray500 = Color(0xFF8A8A8A);
  static const Color gray600 = Color(0xFF6B6B6B);
  static const Color gray700 = Color(0xFF4A4A4A);
  static const Color gray800 = Color(0xFF2E2E2E);
  static const Color gray900 = Color(0xFF1A1A1A);

  // ========== SEMANTIC COLORS ==========
  static const Color primary = blue500; // #064698
  static const Color secondary = teal500; // #06B694
  static const Color accent = azure500; // #007BB2
  static const Color warning = yellow500; // #FFC800

  static const Color success = teal500;
  static const Color error = Color(0xFFE53E3E);
  static const Color info = azure500;

  // ========== NEUTRAL COLORS ==========
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color background = gray50; // #F5F5F5
  static const Color surface = white;
  static const Color border = gray300;
  static const Color divider = gray200;

  // ========== SEMANTIC VARIANTS ==========
  // Success colors
  static const Color successLight = teal100;
  static const Color successDark = teal800;

  // Warning colors
  static const Color warningLight = yellow100;
  static const Color warningDark = yellow800;

  // Error colors
  static const Color errorLight = Color(0xFFFED7D7);
  static const Color errorDark = Color(0xFF9B2C2C);

  // Info colors
  static const Color infoLight = lightBlue100;
  static const Color infoDark = azure800;

  // ========== TEXT COLORS ==========
  // Light theme text colors
  static const Color textPrimary = gray900;
  static const Color textSecondary = gray600;
  static const Color textTertiary = gray400; // #9AA1AB
  static const Color textDisabled = gray300;
  static const Color textOnPrimary = white;
  static const Color textOnSecondary = white;

  // Dark theme text colors
  static const Color textPrimaryDark = gray50;
  static const Color textSecondaryDark = gray300;
  static const Color textTertiaryDark = gray400;
  static const Color textDisabledDark = gray600;

  static const Color textLink = blue600;
  static const Color textLinkDark = blue300;
  static const Color textError = error;
  static const Color textErrorDark = errorLight;

  // ========== INTERACTIVE STATES ==========
  static const Color disabled = gray300;
  static const Color disabledContent = gray400;

  // Hover states
  static const Color primaryHover = blue600;
  static const Color secondaryHover = teal600;
  static const Color accentHover = azure600;

  // Pressed states
  static const Color primaryPressed = blue700;
  static const Color secondaryPressed = teal700;
  static const Color accentPressed = azure700;

  // ========== SURFACE VARIANTS ==========
  static const Color surfaceElevated1 = white; // Cards
  static const Color surfaceElevated2 = gray50; // Dialogs
  static const Color surfaceElevated3 = lightBlue100; // Menus

  // Dark theme surfaces
  static const Color darkSurface = Color(0xFF121212);
  static const Color darkSurfaceElevated1 = Color(0xFF1E1E1E);
  static const Color darkSurfaceElevated2 = Color(0xFF2C2C2C);

  // ========== BUTTON COLORS ==========
  static const Color buttonPrimary = blue500;
  static const Color buttonSecondary = teal500;
  static const Color buttonTertiary = lightBlue500;
  static const Color buttonWarning = yellow500;
  static const Color buttonDanger = error;

  // ========== UTILITY COLORS ==========
  // Overlay colors (with opacity)
  static const Color overlay = Color(0x80000000); // 50% black
  static const Color overlayLight = Color(0x40000000); // 25% black
  static const Color scrim = Color(0xB3000000); // 70% black

  // Shimmer/Skeleton loading
  static const Color shimmerBase = gray200;
  static const Color shimmerHighlight = gray50;

  // Badge colors
  static const Color badgeNew = yellow500;
  static const Color badgeHot = error;
  static const Color badgeSuccess = teal500;
  static const Color badgeInfo = azure500;

  // ========== SHADOW COLORS ==========
  static const Color shadow = Color(0x1A000000); // 10% black
  static const Color shadowMedium = Color(0x33000000); // 20% black
  static const Color shadowStrong = Color(0x4D000000); // 30% black
}
