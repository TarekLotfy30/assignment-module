import 'package:assignment/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// translate-me-ignore-all-file
class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
      decoration: BoxDecoration(
        color: Color(0xff064698),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.locationFilter,
            height: 16,
            width: 16,
            semanticsLabel: 'Filter Icon',
          ),
          Expanded(
            child: const Text(
              'القاهرة',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
