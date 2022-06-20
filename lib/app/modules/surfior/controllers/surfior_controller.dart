import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SurfiorController extends GetxController {
  //TODO: Implement SurfiorController
  void loadWebView() {
    WebView(
      initialUrl: "https://www.google.com/",
    );
  }
}
