import 'package:flutter/material.dart';

abstract final class AppIcons {
  // If using Flutter built-in icons
  static const IconData error = Icons.error_outline_outlined;
  static const IconData success = Icons.check_circle_outline;
  static const IconData warning = Icons.warning_amber_outlined;
  static const IconData info = Icons.info_outline;
  
  // If using custom SVG or PNG icons
  static final String backArrow = 'assets/icons/arrow_right.svg';
  static final String locationFilter = 'assets/icons/location_target_icon.svg';
  static final String search = 'assets/icons/search.svg';
}
