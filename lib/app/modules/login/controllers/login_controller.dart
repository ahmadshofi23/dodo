import 'package:dodo/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onLoginSuccess() {
    Get.snackbar("", "Login Success");
    Get.toNamed(Routes.CHOSE_LOGIN);
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
