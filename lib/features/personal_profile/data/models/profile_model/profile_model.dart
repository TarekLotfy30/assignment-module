import 'package:equatable/equatable.dart';

import 'branches.dart';
import 'cities.dart';
import 'grades.dart';
import 'user_survey.dart';
import 'wallet.dart';

class ProfileModel extends Equatable {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final String? slug;
  final String? fatherMobile;
  final int? gradeId;
  final Cities? cities;
  final List<UserSurvey>? userSurvey;
  final List<dynamic>? parentHasStudents;
  final Branches? branches;
  final Grades? grades;
  final List<Wallet>? wallets;
  final List<dynamic>? promoCodes;

  const ProfileModel({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.slug,
    this.fatherMobile,
    this.gradeId,
    this.cities,
    this.userSurvey,
    this.parentHasStudents,
    this.branches,
    this.grades,
    this.wallets,
    this.promoCodes,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> data) => ProfileModel(
    id: data['id'] as int?,
    firstName: data['firstname'] as String?,
    lastName: data['lastname'] as String?,
    phone: data['phone'] as String?,
    email: data['email'] as String?,
    slug: data['slug'] as String?,
    fatherMobile: data['father_mobile'] as String?,
    gradeId: data['grade_id'] as int?,
    cities: data['cities'] == null
        ? null
        : Cities.fromJson(data['cities'] as Map<String, dynamic>),
    userSurvey: (data['user_survey'] as List<dynamic>?)
        ?.map((e) => UserSurvey.fromMap(e as Map<String, dynamic>))
        .toList(),
    parentHasStudents: data['parent_has_students'] as List<dynamic>?,
    branches: data['branches'] == null
        ? null
        : Branches.fromMap(data['branches'] as Map<String, dynamic>),
    grades: data['grades'] == null
        ? null
        : Grades.fromMap(data['grades'] as Map<String, dynamic>),
    wallets: (data['wallets'] as List<dynamic>?)
        ?.map((e) => Wallet.fromMap(e as Map<String, dynamic>))
        .toList(),
    promoCodes: data['promo_codes'] as List<dynamic>?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'firstname': firstName,
    'lastname': lastName,
    'phone': phone,
    'email': email,
    'slug': slug,
    'father_mobile': fatherMobile,
    'grade_id': gradeId,
    'cities': cities?.toMap(),
    'user_survey': userSurvey?.map((e) => e.toMap()).toList(),
    'parent_has_students': parentHasStudents,
    'branches': branches?.toMap(),
    'grades': grades?.toMap(),
    'wallets': wallets?.map((e) => e.toMap()).toList(),
    'promo_codes': promoCodes,
  };

  @override
  List<Object?> get props {
    return [
      id,
      firstName,
      lastName,
      phone,
      email,
      slug,
      fatherMobile,
      gradeId,
      cities,
      userSurvey,
      parentHasStudents,
      branches,
      grades,
      wallets,
      promoCodes,
    ];
  }
}
