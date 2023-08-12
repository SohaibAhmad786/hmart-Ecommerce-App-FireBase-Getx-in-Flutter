import 'package:h_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget appLogo() {
  return VxBox(
    child: Image.asset(icAppLogo).box.make().p8(),
  )
      .margin(const EdgeInsets.symmetric(horizontal: 10))
      .white
      .size(150, 70)
      .rounded
      .make();
}
