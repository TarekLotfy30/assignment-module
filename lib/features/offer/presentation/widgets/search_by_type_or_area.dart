import 'package:assignment/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// translate-me-ignore-all-file
class SearchByTypeOrArea extends StatelessWidget {
  const SearchByTypeOrArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: SvgPicture.asset(AppIcons.search, semanticsLabel: 'Search Icon'),
      hintText: 'ابحث بالمنطقة او النوع',
      hintStyle: WidgetStateProperty.all<TextStyle>(
        TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
          fontWeight: FontWeight.w400,
        ),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all<double>(0),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 18),
      ),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          side: BorderSide(color: Color(0xffBBC9ED), width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
