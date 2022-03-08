import 'package:dodo/app/routes/app_pages.dart';
import 'package:dodo/app/utils/shared.dart';
import 'package:dodo/app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'component_home/default_button.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().ini(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
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
                    style: kTextStyleColor.copyWith(
                      fontSize: getProportionateScreenHeight(60),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "The Magic Eyes Snail",
                    style: kTextStyleColor.copyWith(
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
                      text: "Registrasi",
                      press: () => Get.toNamed(Routes.REGISTRASI),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    DefaultButton(
                      color: bgButtonColor,
                      text: "Login",
                      press: () => Get.toNamed(Routes.LOGIN),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
