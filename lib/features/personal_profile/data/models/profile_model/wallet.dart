import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'countries.dart';

class Wallet extends Equatable {
  final int? id;
  final int? balance;
  final int? countryId;
  final Countries? countries;
  final int? studentId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? holdBalance;

  const Wallet({
    this.id,
    this.balance,
    this.countryId,
    this.countries,
    this.studentId,
    this.createdAt,
    this.updatedAt,
    this.holdBalance,
  });

  factory Wallet.fromMap(Map<String, dynamic> data) => Wallet(
    id: data['id'] as int?,
    balance: data['balance'] as int?,
    countryId: data['country_id'] as int?,
    countries: data['countries'] == null
        ? null
        : Countries.fromMap(data['countries'] as Map<String, dynamic>),
    studentId: data['student_id'] as int?,
    createdAt: data['created_at'] == null
        ? null
        : DateTime.parse(data['created_at'] as String),
    updatedAt: data['updated_at'] == null
        ? null
        : DateTime.parse(data['updated_at'] as String),
    holdBalance: data['hold_balance'] as int?,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'balance': balance,
    'country_id': countryId,
    'countries': countries?.toMap(),
    'student_id': studentId,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'hold_balance': holdBalance,
  };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Wallet].
  factory Wallet.fromJson(String data) {
    return Wallet.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Wallet] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      balance,
      countryId,
      countries,
      studentId,
      createdAt,
      updatedAt,
      holdBalance,
    ];
  }
}
