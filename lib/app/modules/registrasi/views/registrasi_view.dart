import 'package:dodo/app/modules/home/views/component_home/default_button.dart';
import 'package:dodo/app/utils/shared.dart';
import 'package:dodo/app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registrasi_controller.dart';

class RegistrasiView extends GetView<RegistrasiController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().ini(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kTextColor,
        appBar: AppBar(
          leading: Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * 0.25,
                ),
                child: Image.asset("assets/images/Normal-Eye.png"),
              ),
              SizedBox(height: getProportionateScreenHeight(120)),
              Text(
                "Hi parents, enter your email and \npassword for register!",
                textAlign: TextAlign.center,
                style: kTextStyleColor2.copyWith(
                    fontSize: getProportionateScreenWidth(40)),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.17),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(40)),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: bgButtonColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: bgButtonColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: bgButtonColor),
                        ),
                        hintText: "Enter your email",
                        hintStyle: kTextStyleColor,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: bgButtonColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: bgButtonColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: bgButtonColor),
                        ),
                        hintText: "Enter your Password",
                        hintStyle: kTextStyleColor,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    DefaultButton(
                        text: "Register",
                        press: () => controller.onRegistrasiSucces(),
                        color: kPrimaryColor),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
            ],
          ),
        ),
      ),
    );
  }
}
