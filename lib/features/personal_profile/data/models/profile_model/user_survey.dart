import '../../../../../core/models/base_model.dart';

class UserSurvey extends BaseModel {
  final String? deviceId;

  const UserSurvey({this.deviceId});

  factory UserSurvey.fromJson(Map<String, dynamic> json) {
    return UserSurvey(deviceId: json['device_id']);
  }

  @override
  Map<String, dynamic> toJson() {
    return {'device_id': deviceId};
  }

  @override
  List<Object?> get props => [deviceId];
}
