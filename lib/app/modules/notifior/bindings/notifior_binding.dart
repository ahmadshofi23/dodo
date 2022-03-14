import 'package:get/get.dart';

import '../controllers/notifior_controller.dart';

class NotifiorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifiorController>(
      () => NotifiorController(),
    );
  }
}
