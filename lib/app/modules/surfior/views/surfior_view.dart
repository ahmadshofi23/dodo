import 'package:dodo/app/routes/app_pages.dart';
import 'package:dodo/app/utils/shared.dart';
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
        body: Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
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
              Positioned(
                bottom: getProportionateScreenHeight(30),
                child: Container(
                  width: Get.width,
                  height: getProportionateScreenHeight(100),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(70)),
                    child: TextFormField(
                      // textInputAction: Text,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(3),
                              vertical: getProportionateScreenHeight(1)),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              color: kPrimaryColor,
                              child:
                                  Image.asset("assets/images/microphone.png"),
                            ),
                          ),
                        ),
                        hintText: "Type or Speak it. Kids!",
                        fillColor: kTextColor.withOpacity(0.7),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: kTextColor.withOpacity(0.7),
                        )),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kTextColor.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
