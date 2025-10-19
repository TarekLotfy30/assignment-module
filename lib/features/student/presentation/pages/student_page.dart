import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/app_router.gr.dart';

// translate-me-ignore-all-file
@RoutePage()
class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Drawer(
            
            child: ListView(
              children: const [
                RouterButton(
                  label: 'الملف الشخصى',
                  destination: PersonalProfileRoute(),
                ),
                RouterButton(label: 'محفظتك', destination: YourWalletRoute()),
                RouterButton(label: "محتوياتى", destination: MyContentRoute()),
                RouterButton(
                  label: "اسال المدرس",
                  destination: AskMyTeacherRoute(),
                ),
                RouterButton(
                  label: "سله المشتريات",
                  destination: ShoppingCartRoute(),
                ),
                RouterButton(label: "طلباتك", destination: YourOrdersRoute()),
                RouterButton(label: "الأعدادات", destination: SettingsRoute()),
                RouterButton(label: "تسجيل خروج", destination: LogoutRoute()),
              ],
            ),
          ),

          const Expanded(child: AutoRouter()),
        ],
      ),
    );
  }
}

class RouterButton extends StatelessWidget {
  final String label;
  final PageRouteInfo destination;

  const RouterButton({
    super.key,
    required this.label,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await AutoRouter.of(context).push(destination);
      },
      child: Text(label),
    );
  }
}
