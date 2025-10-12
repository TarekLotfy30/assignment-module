import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/app_router.gr.dart';

// translate-me-ignore-all-file
class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Assignment App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                //Get.toNamed(RoutesName.assignmentPage);
                await context.router.push(const AssignmentRoute());
              },
              child: const Text('Start Assignment'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                //Get.toNamed(RoutesName.assignmentPage);
                //context.router.replaceAll([const OfferRoute()]);
                await context.router.push(const OfferRoute());
              },
              child: const Text('go to offers'),
            ),
          ],
        ),
      ),
    );
  }
}
