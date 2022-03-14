import 'package:dodo/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ParentLoginController extends GetxController {
  //TODO: Implement ParentLoginController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void onLoginParentSuccess() {
    Get..snackbar("", "Login Success");
    Get.toNamed(Routes.NOTIFIOR);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
