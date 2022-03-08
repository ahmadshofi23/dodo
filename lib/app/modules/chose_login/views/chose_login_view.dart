import 'package:dodo/app/modules/home/views/component_home/default_button.dart';
import 'package:dodo/app/routes/app_pages.dart';
import 'package:dodo/app/utils/shared.dart';
import 'package:dodo/app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chose_login_controller.dart';

class ChoseLoginView extends GetView<ChoseLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth! * 0.25,
              ),
              child: Image.asset("assets/images/Normal-Eye.png"),
            ),
          ),
          Spacer(flex: 1),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  "Dodo",
                  style: kTextStyleColor3.copyWith(
                    fontSize: getProportionateScreenHeight(60),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "The Magic Eyes Snail",
                  style: kTextStyleColor3.copyWith(
                    fontSize: getProportionateScreenWidth(50),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40)),
              child: Column(
                children: [
                  DefaultButton(
                    color: bgButtonColor,
                    text: "Parent",
                    press: () => Get.toNamed(Routes.PARENT_LOGIN),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  DefaultButton(
                    color: bgButtonColor,
                    text: "Kids",
                    press: () => Get.toNamed(Routes.SURFIOR),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
