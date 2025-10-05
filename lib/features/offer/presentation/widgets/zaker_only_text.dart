import 'package:flutter/material.dart';

// translate-me-ignore-all-file
class ZakerOnlyText extends StatelessWidget {
  const ZakerOnlyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "هذه العروض متاحة لطلاب ذاكر فقط.",
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.grey[600],
      ),
    );
  }
}
