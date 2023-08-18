import 'package:h_mart/consts/consts.dart';

import 'package:flutter/material.dart';

Widget homeBtns(
    {double? height,
    double? width,
    String? image,
    VoidCallback? onPress,
    String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        image!,
        width: 26,
      ),
      5.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.shadowXs.white.size(width!, height!).make().onTap(onPress);
}
