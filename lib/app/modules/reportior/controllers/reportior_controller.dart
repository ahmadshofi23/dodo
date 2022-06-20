import 'package:get/get.dart';

class ReportiorController extends GetxController {
  //TODO: Implement ReportiorController

  final selected = "pilih nama anak".obs;
  List name = ['Ahmad Shofi', 'Farhan', 'Azis', 'Mamen'];

  void setSelected(String value) {
    selected.value = value;
  }
}
