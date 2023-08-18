import 'package:h_mart/consts/consts.dart';

import 'package:flutter/material.dart';

Widget featuredBtn({String? image, String? title}) {
  return Row(
    children: [
      10.widthBox,
      Image.asset(image!, width: 50, fit: BoxFit.cover),
      5.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
      15.widthBox,
    ],
  ).box.size(200, 50).roundedSM.margin(const EdgeInsets.all(10)).white.shadowXs.make();
}
