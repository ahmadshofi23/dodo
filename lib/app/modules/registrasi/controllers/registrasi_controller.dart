import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrasiController extends GetxController {
  //TODO: Implement RegistrasiController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onRegistrasiSucces() {
    Get.snackbar("", "Registrasi Success");
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
