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
import 'package:assignment/features/offer/data/models/offer_model.dart' as _i8;
import 'package:assignment/features/offer/presentation/page/offer_page.dart'
    as _i4;
import 'package:assignment/features/offer_details/presentation/page/offer_details_page.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

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
class OfferDetailsRoute extends _i6.PageRouteInfo<OfferDetailsRouteArgs> {
  OfferDetailsRoute({
    _i7.Key? key,
    required _i8.OfferModel offer,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         OfferDetailsRoute.name,
         args: OfferDetailsRouteArgs(key: key, offer: offer),
         initialChildren: children,
       );

  static const String name = 'OfferDetailsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OfferDetailsRouteArgs>();
      return _i3.OfferDetailsPage(key: args.key, offer: args.offer);
    },
  );
}

class OfferDetailsRouteArgs {
  const OfferDetailsRouteArgs({this.key, required this.offer});

  final _i7.Key? key;

  final _i8.OfferModel offer;

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
