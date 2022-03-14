import 'package:dodo/app/utils/shared.dart';
import 'package:dodo/app/utils/size_config.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notifior_controller.dart';

class NotifiorView extends GetView<NotifiorController> {
  String? selectedValue;
  List<String> items = ['Malicous', 'Advice'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(20)),
                  child: Text(
                    "Chose Action",
                    style: kTextStyleColor3.copyWith(
                      fontSize: getProportionateScreenWidth(100),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(40)),
                child: Text(
                  "Oh no, your kids accessing fucking fuck asshole",
                  textAlign: TextAlign.center,
                  style: kTextStyleColor3.copyWith(
                    fontSize: getProportionateScreenWidth(50),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(15),
                    bottom: getProportionateScreenHeight(50)),
                child: Center(
                  child: Text(
                    "Suggestion: Content Negative",
                    style: kTextStyleColor3.copyWith(
                      fontSize: getProportionateScreenWidth(50),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: SizeConfig.screenHeight! * 0.15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose Action",
                        style: kTextStyleColor3.copyWith(
                          fontSize: getProportionateScreenHeight(16),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: const [
                              Icon(
                                Icons.list,
                                size: 30,
                                color: Color(0xFF4E773F),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  'Select Your Action',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4E773F),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: kTextStyleColor3.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          iconSize: getProportionateScreenHeight(25),
                          iconEnabledColor: kPrimaryColor,
                          iconDisabledColor: Colors.grey,
                          buttonHeight: getProportionateScreenHeight(70),
                          buttonWidth: SizeConfig.screenWidth,
                          buttonPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(20)),
                          buttonDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xFFE2E2E2),
                          ),
                          itemHeight: getProportionateScreenHeight(50),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xFFFFFFFF),
                          ),
                          // dropdownElevation: 8,
                          scrollbarRadius: const Radius.circular(40),
                          scrollbarThickness: 6,
                          scrollbarAlwaysShow: true,
                          // offset: const Offset(-20, 0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Message Your Kid",
                      style: kTextStyleColor3.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(16)),
                    ),
                    TextFormField(
                      maxLines: 8,
                      decoration: const InputDecoration.collapsed(
                        hintText: "Enter your message",
                        fillColor: Color(0xFFE2E2E2),
                        filled: true,
                        border: InputBorder.none,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
