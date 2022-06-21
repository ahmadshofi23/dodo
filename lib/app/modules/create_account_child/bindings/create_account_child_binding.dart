import 'package:get/get.dart';

import '../controllers/create_account_child_controller.dart';

class CreateAccountChildBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAccountChildController>(
      () => CreateAccountChildController(),
    );
  }
}
