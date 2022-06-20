// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../../../utils/shared.dart';
import '../../../../utils/size_config.dart';

class ListDate extends StatelessWidget {
  const ListDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlatButton(
          minWidth: getProportionateScreenWidth(250),
          height: getProportionateScreenHeight(80),
          onPressed: () {},
          child: Text(
            "All",
            style: kTextStyleColor.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenHeight(22)),
          ),
          color: bgButtonColor,
        ),
        FlatButton(
          minWidth: getProportionateScreenWidth(250),
          height: getProportionateScreenHeight(80),
          onPressed: () {},
          child: Column(
            children: [
              Text(
                "Daily",
                style: kTextStyleColor.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenHeight(22)),
              ),
              Text(
                "29 Desember 2021",
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(12),
                    color: kTextColor),
              )
            ],
          ),
          color: kPrimaryColor,
        ),
        FlatButton(
          minWidth: getProportionateScreenWidth(250),
          height: getProportionateScreenHeight(80),
          onPressed: () {},
          child: Column(
            children: [
              Text(
                "Monthly",
                style: kTextStyleColor.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenHeight(22)),
              ),
              Text(
                "Desember 2021",
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(12),
                    color: kTextColor),
              )
            ],
          ),
          color: bgButtonColor,
        ),
        FlatButton(
          minWidth: getProportionateScreenWidth(250),
          height: getProportionateScreenHeight(80),
          onPressed: () {},
          child: Text(
            "YEAR",
            style: kTextStyleColor.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenHeight(22)),
          ),
          color: bgButtonColor,
        ),
      ],
    );
  }
}
