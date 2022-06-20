import 'package:get/get.dart';

import '../controllers/reportior_controller.dart';

class ReportiorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReportiorController>(
      () => ReportiorController(),
    );
  }
}
