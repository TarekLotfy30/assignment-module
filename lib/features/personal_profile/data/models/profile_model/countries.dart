import 'dart:convert';

import 'package:equatable/equatable.dart';

class Countries extends Equatable {
  final String? currency;
  final int? fawry;
  final int? credit;
  final int? electronicWallet;
  final int? wallet;
  final String? title;
  final String? showedTitle;

  const Countries({
    this.currency,
    this.fawry,
    this.credit,
    this.electronicWallet,
    this.wallet,
    this.title,
    this.showedTitle,
  });

  factory Countries.fromMap(Map<String, dynamic> data) => Countries(
    currency: data['currency'] as String?,
    fawry: data['fawry'] as int?,
    credit: data['credit'] as int?,
    electronicWallet: data['electronic_wallet'] as int?,
    wallet: data['wallet'] as int?,
    title: data['title'] as String?,
    showedTitle: data['showed_title'] as String?,
  );

  Map<String, dynamic> toMap() => {
    'currency': currency,
    'fawry': fawry,
    'credit': credit,
    'electronic_wallet': electronicWallet,
    'wallet': wallet,
    'title': title,
    'showed_title': showedTitle,
  };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Countries].
  factory Countries.fromJson(String data) {
    return Countries.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Countries] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      currency,
      fawry,
      credit,
      electronicWallet,
      wallet,
      title,
      showedTitle,
    ];
  }
}
