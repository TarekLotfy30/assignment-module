import 'package:flutter/material.dart';

// translate-me-ignore-all-file
class GreetingWithUserName extends StatelessWidget {
  const GreetingWithUserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "اهلا بك محمد في العروض",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    );
  }
}
