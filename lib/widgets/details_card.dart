import 'package:flutter/material.dart';
import 'package:h_mart/consts/consts.dart';

Widget detailsCard(double width,String value,String details) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      value.text.fontFamily(bold).color(darkFontGrey).align(TextAlign.center).size(16).make(),
      5.heightBox,
      details.text.color(darkFontGrey).align(TextAlign.center).make()
    ],
  )
      .box
      .white
      .roundedSM
      .width(width)
      .height(80)
      .padding(const EdgeInsets.all(4))
      .make();
}
