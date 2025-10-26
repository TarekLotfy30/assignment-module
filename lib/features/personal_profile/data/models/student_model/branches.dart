import 'dart:convert';

import 'package:equatable/equatable.dart';

class Branches extends Equatable {
  final int? id;
  final String? title;
  final dynamic interval;
  final dynamic daysOff;
  final String? icon;
  final int? admission;
  final dynamic season;
  final String? admissionOpenDate;
  final String? admissionCloseDate;
  final String? admissionOpenTime;
  final String? admissionCloseTime;
  final String? showedTitle;
  final dynamic oldBranches;
  final int? active;
  final String? image;
  final String? description;
  final int? selectedCategoryFirst;
  final int? nextStep;
  final int? numberOfTerms;
  final String? language;

  const Branches({
    this.id,
    this.title,
    this.interval,
    this.daysOff,
    this.icon,
    this.admission,
    this.season,
    this.admissionOpenDate,
    this.admissionCloseDate,
    this.admissionOpenTime,
    this.admissionCloseTime,
    this.showedTitle,
    this.oldBranches,
    this.active,
    this.image,
    this.description,
    this.selectedCategoryFirst,
    this.nextStep,
    this.numberOfTerms,
    this.language,
  });

  factory Branches.fromMap(Map<String, dynamic> data) => Branches(
    id: data['id'] as int?,
    title: data['title'] as String?,
    interval: data['interval'] as dynamic,
    daysOff: data['days_off'] as dynamic,
    icon: data['icon'] as String?,
    admission: data['admission'] as int?,
    season: data['season'] as dynamic,
    admissionOpenDate: data['admission_open_date'] as String?,
    admissionCloseDate: data['admission_close_date'] as String?,
    admissionOpenTime: data['admission_open_time'] as String?,
    admissionCloseTime: data['admission_close_time'] as String?,
    showedTitle: data['showed_title'] as String?,
    oldBranches: data['old_branches'] as dynamic,
    active: data['active'] as int?,
    image: data['image'] as String?,
    description: data['description'] as String?,
    selectedCategoryFirst: data['selectedCategoryFirst'] as int?,
    nextStep: data['next_step'] as int?,
    numberOfTerms: data['number_of_terms'] as int?,
    language: data['language'] as String?,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'interval': interval,
    'days_off': daysOff,
    'icon': icon,
    'admission': admission,
    'season': season,
    'admission_open_date': admissionOpenDate,
    'admission_close_date': admissionCloseDate,
    'admission_open_time': admissionOpenTime,
    'admission_close_time': admissionCloseTime,
    'showed_title': showedTitle,
    'old_branches': oldBranches,
    'active': active,
    'image': image,
    'description': description,
    'selectedCategoryFirst': selectedCategoryFirst,
    'next_step': nextStep,
    'number_of_terms': numberOfTerms,
    'language': language,
  };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Branches].
  factory Branches.fromJson(String data) {
    return Branches.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Branches] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      title,
      interval,
      daysOff,
      icon,
      admission,
      season,
      admissionOpenDate,
      admissionCloseDate,
      admissionOpenTime,
      admissionCloseTime,
      showedTitle,
      oldBranches,
      active,
      image,
      description,
      selectedCategoryFirst,
      nextStep,
      numberOfTerms,
      language,
    ];
  }
}
