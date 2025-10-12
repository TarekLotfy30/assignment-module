import 'package:get/get.dart';

import '../assignment_controller.dart';

class AssignmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AssignmentController>(AssignmentController());
  }
}
