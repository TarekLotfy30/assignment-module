import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserSurvey extends Equatable {
  final String? deviceId;

  const UserSurvey({this.deviceId});

  factory UserSurvey.fromMap(Map<String, dynamic> data) =>
      UserSurvey(deviceId: data['device_id'] as String?);

  Map<String, dynamic> toMap() => {'device_id': deviceId};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserSurvey].
  factory UserSurvey.fromJson(String data) {
    return UserSurvey.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserSurvey] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [deviceId];
}
