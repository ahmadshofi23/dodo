import 'package:get/get.dart';

import '../controllers/chose_login_controller.dart';

class ChoseLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChoseLoginController>(
      () => ChoseLoginController(),
    );
  }
}
