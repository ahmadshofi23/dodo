import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewView extends GetView<WebViewController> {
  const WebViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebViewView'),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://flutter.dev",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
