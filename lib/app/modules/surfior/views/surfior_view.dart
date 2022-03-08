import 'package:dodo/app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/surfior_controller.dart';

class SurfiorView extends GetView<SurfiorController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().ini(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/Vectorbg.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Image.asset(
                "assets/images/Dodo.png",
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
