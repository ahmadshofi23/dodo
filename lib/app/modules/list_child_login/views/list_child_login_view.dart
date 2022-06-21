import 'package:dodo/app/utils/shared.dart';
import 'package:dodo/app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_child_login_controller.dart';

class ListChildLoginView extends GetView<ListChildLoginController> {
  const ListChildLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().ini(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: kTextColor2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: getProportionateScreenHeight(150),
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/dodo white.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Silahkan pilih nama anda untuk login",
                style: kTextStyleColor.copyWith(
                    fontSize: getProportionateScreenWidth(35)),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Image.asset("assets/images/ic_child.png")
            ],
          ),
          Expanded(
            child: SizedBox(
              // height: getProportionateScreenHeight(50),
              width: Get.width,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: getProportionateScreenHeight(20),
                      left: getProportionateScreenWidth(30),
                      right: getProportionateScreenWidth(30),
                    ),
                    decoration: BoxDecoration(
                      // color: kPrimaryColor,
                      border: Border.all(
                        color: kTextColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(20)),
                      child: Center(
                        child: Text(
                          "Ahmad Shofi",
                          style: kTextStyleColor.copyWith(
                            fontSize: getProportionateScreenWidth(40),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
