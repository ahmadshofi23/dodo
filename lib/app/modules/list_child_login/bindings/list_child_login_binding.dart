import 'package:get/get.dart';

import '../controllers/list_child_login_controller.dart';

class ListChildLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListChildLoginController>(
      () => ListChildLoginController(),
    );
  }
}
