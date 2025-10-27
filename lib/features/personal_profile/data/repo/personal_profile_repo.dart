import '../../../../core/services/network/dio_consumer.dart';
import '../../../../core/services/network/end_points.dart';
import '../models/profile_model/profile_model.dart';

class PersonalProfileRepo {
  final DioConsumer _dioConsumer;

  PersonalProfileRepo(this._dioConsumer);
  Future<ProfileModel> getUserProfile() async {
    try {
      final result = await _dioConsumer.get(
        endPoint: EndPoints.student + EndPoints.me,
      );
      return ProfileModel.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }
}
