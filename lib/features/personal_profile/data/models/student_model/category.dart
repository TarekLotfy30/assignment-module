import 'dart:convert';

import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int? id;
  final String? name;
  final int? branchId;
  final int? active;
  final dynamic oldCategory;
  final dynamic nextStep;
  final String? showedTitle;

  const Category({
    this.id,
    this.name,
    this.branchId,
    this.active,
    this.oldCategory,
    this.nextStep,
    this.showedTitle,
  });

  factory Category.fromMap(Map<String, dynamic> data) => Category(
    id: data['id'] as int?,
    name: data['name'] as String?,
    branchId: data['branch_id'] as int?,
    active: data['active'] as int?,
    oldCategory: data['old_category'] as dynamic,
    nextStep: data['next_step'] as dynamic,
    showedTitle: data['showed_title'] as String?,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'branch_id': branchId,
    'active': active,
    'old_category': oldCategory,
    'next_step': nextStep,
    'showed_title': showedTitle,
  };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Category].
  factory Category.fromJson(String data) {
    return Category.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Category] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [id, name, branchId, active, oldCategory, nextStep, showedTitle];
  }
}
