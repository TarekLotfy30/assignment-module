import '../../../../core/services/network/dio_consumer.dart';
import '../../../../core/services/network/end_points.dart';
import '../models/student_model/student_model.dart';

class StudentRepo {
  
  final DioConsumer _dioConsumer;

  StudentRepo(this._dioConsumer);
  Future<StudentModel> getStudent() async {
    try {
      final result = await _dioConsumer.get(
        endPoint: EndPoints.student + EndPoints.me,
      );
      return StudentModel.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }
}
