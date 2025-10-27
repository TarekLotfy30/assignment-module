import 'package:auto_route/auto_route.dart';

import '../../../../core/constants/app_icon.dart';
import '../../../../core/routing/app_router.gr.dart';

// translate-me-ignore-all-file
class ListTileOptions {
  final String title;
  final String leadingIcon;
  final PageRouteInfo destination;

  const ListTileOptions({
    required this.destination,
    required this.title,
    required this.leadingIcon,
  });
}

final List<ListTileOptions> options = [
  const ListTileOptions(
    destination: PersonalProfileRoute(),
    title: 'الملف الشخصي',
    leadingIcon: AppIcon.person,
  ),
  const ListTileOptions(
    destination: YourWalletRoute(),
    title: 'محفظتك',
    leadingIcon: AppIcon.wallet,
  ),
  const ListTileOptions(
    destination: MyContentRoute(),
    title: 'محتوياتي',
    leadingIcon: AppIcon.content,
  ),
  const ListTileOptions(
    destination: AskMyTeacherRoute(),
    title: 'اسال المدرس',
    leadingIcon: AppIcon.askTeacher,
  ),
  const ListTileOptions(
    destination: ShoppingCartRoute(),
    title: 'سله المشتريات',
    leadingIcon: AppIcon.cart,
  ),
  const ListTileOptions(
    destination: SettingsRoute(),
    title: 'الاعدادات',
    leadingIcon: AppIcon.settings,
  ),
  const ListTileOptions(
    destination: LogoutRoute(),
    title: 'تسجيل الخروج',
    leadingIcon: AppIcon.logout,
  ),
];
