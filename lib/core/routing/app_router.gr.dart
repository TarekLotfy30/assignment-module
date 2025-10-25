// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:assignment/features/ask_my_teacher/presentation/page/ask_my_teacher_page.dart'
    as _i1;
import 'package:assignment/features/assignment/presentation/pages/assignment_page.dart'
    as _i2;
import 'package:assignment/features/assignment/presentation/pages/score_page.dart'
    as _i9;
import 'package:assignment/features/home/presentation/pages/home_page.dart'
    as _i3;
import 'package:assignment/features/logout/presentation/page/logout_page.dart'
    as _i4;
import 'package:assignment/features/my_content/presentation/page/my_content_page.dart'
    as _i5;
import 'package:assignment/features/offer/data/models/offer_model.dart' as _i17;
import 'package:assignment/features/offer/presentation/page/offer_page.dart'
    as _i7;
import 'package:assignment/features/offer_details/presentation/page/offer_details_page.dart'
    as _i6;
import 'package:assignment/features/personal_profile/presentation/page/personal_profile_page.dart'
    as _i8;
import 'package:assignment/features/settings/presentation/pages/settings_page.dart'
    as _i10;
import 'package:assignment/features/shopping_cart/presentation/page/shopping_cart_page.dart'
    as _i11;
import 'package:assignment/features/student/presentation/page/student_page.dart'
    as _i12;
import 'package:assignment/features/your_orders/presentation/page/your_orders_page.dart'
    as _i13;
import 'package:assignment/features/your_wallet/presentation/page/your_wallet_page.dart'
    as _i14;
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

/// generated route for
/// [_i1.AskMyTeacherPage]
class AskMyTeacherRoute extends _i15.PageRouteInfo<void> {
  const AskMyTeacherRoute({List<_i15.PageRouteInfo>? children})
    : super(AskMyTeacherRoute.name, initialChildren: children);

  static const String name = 'AskMyTeacherRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i1.AskMyTeacherPage();
    },
  );
}

/// generated route for
/// [_i2.AssignmentPage]
class AssignmentRoute extends _i15.PageRouteInfo<void> {
  const AssignmentRoute({List<_i15.PageRouteInfo>? children})
    : super(AssignmentRoute.name, initialChildren: children);

  static const String name = 'AssignmentRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.AssignmentPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.LogoutPage]
class LogoutRoute extends _i15.PageRouteInfo<void> {
  const LogoutRoute({List<_i15.PageRouteInfo>? children})
    : super(LogoutRoute.name, initialChildren: children);

  static const String name = 'LogoutRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i4.LogoutPage();
    },
  );
}

/// generated route for
/// [_i5.MyContentPage]
class MyContentRoute extends _i15.PageRouteInfo<void> {
  const MyContentRoute({List<_i15.PageRouteInfo>? children})
    : super(MyContentRoute.name, initialChildren: children);

  static const String name = 'MyContentRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.MyContentPage();
    },
  );
}

/// generated route for
/// [_i6.OfferDetailsPage]
class OfferDetailsRoute extends _i15.PageRouteInfo<OfferDetailsRouteArgs> {
  OfferDetailsRoute({
    _i16.Key? key,
    required _i17.OfferModel offer,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         OfferDetailsRoute.name,
         args: OfferDetailsRouteArgs(key: key, offer: offer),
         initialChildren: children,
       );

  static const String name = 'OfferDetailsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OfferDetailsRouteArgs>();
      return _i6.OfferDetailsPage(key: args.key, offer: args.offer);
    },
  );
}

class OfferDetailsRouteArgs {
  const OfferDetailsRouteArgs({this.key, required this.offer});

  final _i16.Key? key;

  final _i17.OfferModel offer;

  @override
  String toString() {
    return 'OfferDetailsRouteArgs{key: $key, offer: $offer}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OfferDetailsRouteArgs) return false;
    return key == other.key && offer == other.offer;
  }

  @override
  int get hashCode => key.hashCode ^ offer.hashCode;
}

/// generated route for
/// [_i7.OfferPage]
class OfferRoute extends _i15.PageRouteInfo<void> {
  const OfferRoute({List<_i15.PageRouteInfo>? children})
    : super(OfferRoute.name, initialChildren: children);

  static const String name = 'OfferRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.OfferPage();
    },
  );
}

/// generated route for
/// [_i8.PersonalProfilePage]
class PersonalProfileRoute extends _i15.PageRouteInfo<void> {
  const PersonalProfileRoute({List<_i15.PageRouteInfo>? children})
    : super(PersonalProfileRoute.name, initialChildren: children);

  static const String name = 'PersonalProfileRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.PersonalProfilePage();
    },
  );
}

/// generated route for
/// [_i9.ScorePage]
class ScoreRoute extends _i15.PageRouteInfo<void> {
  const ScoreRoute({List<_i15.PageRouteInfo>? children})
    : super(ScoreRoute.name, initialChildren: children);

  static const String name = 'ScoreRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i9.ScorePage();
    },
  );
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i15.PageRouteInfo<void> {
  const SettingsRoute({List<_i15.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i10.SettingsPage();
    },
  );
}

/// generated route for
/// [_i11.ShoppingCartPage]
class ShoppingCartRoute extends _i15.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i15.PageRouteInfo>? children})
    : super(ShoppingCartRoute.name, initialChildren: children);

  static const String name = 'ShoppingCartRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.ShoppingCartPage();
    },
  );
}

/// generated route for
/// [_i12.StudentPage]
class StudentRoute extends _i15.PageRouteInfo<void> {
  const StudentRoute({List<_i15.PageRouteInfo>? children})
    : super(StudentRoute.name, initialChildren: children);

  static const String name = 'StudentRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.StudentPage();
    },
  );
}

/// generated route for
/// [_i13.YourOrdersPage]
class YourOrdersRoute extends _i15.PageRouteInfo<void> {
  const YourOrdersRoute({List<_i15.PageRouteInfo>? children})
    : super(YourOrdersRoute.name, initialChildren: children);

  static const String name = 'YourOrdersRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i13.YourOrdersPage();
    },
  );
}

/// generated route for
/// [_i14.YourWalletPage]
class YourWalletRoute extends _i15.PageRouteInfo<void> {
  const YourWalletRoute({List<_i15.PageRouteInfo>? children})
    : super(YourWalletRoute.name, initialChildren: children);

  static const String name = 'YourWalletRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i14.YourWalletPage();
    },
  );
}
