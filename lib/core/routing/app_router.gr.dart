// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:assignment/features/assignment/presentation/pages/assignment_page.dart'
    as _i1;
import 'package:assignment/features/assignment/presentation/pages/score_page.dart'
    as _i5;
import 'package:assignment/features/home/presentation/pages/home_page.dart'
    as _i2;
import 'package:assignment/features/offer/presentation/pages/offer_page.dart'
    as _i4;
import 'package:assignment/features/offer_details/presentation/pages/offer_details_page.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i6;

/// generated route for
/// [_i1.AssignmentPage]
class AssignmentRoute extends _i6.PageRouteInfo<void> {
  const AssignmentRoute({List<_i6.PageRouteInfo>? children})
    : super(AssignmentRoute.name, initialChildren: children);

  static const String name = 'AssignmentRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AssignmentPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.OfferDetailsPage]
class OfferDetailsRoute extends _i6.PageRouteInfo<void> {
  const OfferDetailsRoute({List<_i6.PageRouteInfo>? children})
    : super(OfferDetailsRoute.name, initialChildren: children);

  static const String name = 'OfferDetailsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.OfferDetailsPage();
    },
  );
}

/// generated route for
/// [_i4.OfferPage]
class OfferRoute extends _i6.PageRouteInfo<void> {
  const OfferRoute({List<_i6.PageRouteInfo>? children})
    : super(OfferRoute.name, initialChildren: children);

  static const String name = 'OfferRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.OfferPage();
    },
  );
}

/// generated route for
/// [_i5.ScorePage]
class ScoreRoute extends _i6.PageRouteInfo<void> {
  const ScoreRoute({List<_i6.PageRouteInfo>? children})
    : super(ScoreRoute.name, initialChildren: children);

  static const String name = 'ScoreRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.ScorePage();
    },
  );
}
