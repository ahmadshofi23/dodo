// ignore_for_file: deprecated_member_use

import 'package:dodo/app/modules/home/views/component_home/default_button.dart';
import 'package:dodo/app/modules/reportior/views/component_reportior/list_date.dart';
import 'package:dodo/app/utils/shared.dart';
import 'package:dodo/app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reportior_controller.dart';

class ReportiorView extends GetView<ReportiorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ListDate(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(10),
                  horizontal: getProportionateScreenWidth(10),
                ),
                child: Text(
                  "Child`s Name Reviewed:",
                  style: kTextStyleColor3.copyWith(
                    fontSize: getProportionateScreenWidth(40),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(5),
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: kPrimaryColor, width: 3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: kPrimaryColor, width: 3),
                      ),
                    ),
                    hint: Text("Pilih nama anak"),
                    // value: "Pilih Nama Anda",
                    items: [
                      DropdownMenuItem(child: Text("Irul"), value: "New York"),
                      DropdownMenuItem(child: Text("Faisal"), value: "Tokyo"),
                      DropdownMenuItem(child: Text("Angga"), value: "Tokyo"),
                      DropdownMenuItem(child: Text("Ahmad"), value: "Tokyo"),
                    ],
                    onChanged: (newValue) {
                      newValue = "Ahmad Shofi";
                    }),
              ),

              Padding(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
                child: SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: getProportionateScreenHeight(60),
                        color: bgButtonColor,
                        child: Align(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kids Searching",
                              style: kTextStyleColor.copyWith(
                                  fontSize: getProportionateScreenHeight(20),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // list report
              SizedBox(
                height: SizeConfig.screenHeight! * 0.50,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "fucking",
                            style: kTextStyleColor2.copyWith(
                                fontSize: getProportionateScreenHeight(20)),
                          ),
                        )),
                        Expanded(
                            child: Text(
                          "25-12-2001 08:20:30",
                          style: kTextStyleColor2.copyWith(
                              fontSize: getProportionateScreenHeight(15)),
                        )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: getProportionateScreenWidth(50),
                            height: getProportionateScreenHeight(20),
                            color: Colors.red,
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: 100,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(55),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Graf",
                            style: kTextStyleColor.copyWith(
                              fontSize: getProportionateScreenWidth(50),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(20)),
                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(55),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Setting",
                            style: kTextStyleColor.copyWith(
                              fontSize: getProportionateScreenWidth(50),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(20)),
                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(55),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Logout",
                            style: kTextStyleColor.copyWith(
                              fontSize: getProportionateScreenWidth(50),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
