import 'package:h_mart/common_widgets/applogo.dart';
import 'package:h_mart/common_widgets/background.dart';
import 'package:h_mart/common_widgets/custom_buttons.dart';
import 'package:h_mart/common_widgets/custom_textfields.dart';
import 'package:h_mart/consts/consts.dart';

import 'package:flutter/material.dart';
import 'package:h_mart/consts/iconslist.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
                width: double.infinity,
              ),
              appLogo(),
              20.heightBox,
              "Login to H Mart".text.white.fontFamily(semibold).wide.make(),
              20.heightBox,
              Column(
                children: [
                  20.heightBox,
                  CustomTextField13(
                    controller: TextEditingController(),
                    fillColor: lightGrey,
                    hintText: "Email",
                    title: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  20.heightBox,
                  CustomTextField13(
                    controller: TextEditingController(),
                    fillColor: lightGrey,
                    hintText: "Password",
                    title: "Password",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {},
                        child: "Forgot Password".text.color(redColor).make()),
                  ),
                  10.heightBox,
                  CustomElevatedBtn(
                    height: 40,
                    width: double.infinity,
                    onPressed: () {},
                    backgroundColor: redColor,
                    child: "LOGIN".text.color(whiteColor).make(),
                  ),
                  5.heightBox,
                  "or, create a new account".text.color(fontGrey).make(),
                  5.heightBox,
                  CustomElevatedBtn(
                    height: 40,
                    width: double.infinity,
                    onPressed: () {},
                    backgroundColor: golden.withOpacity(.7),
                    child: "SIGNUP".text.color(whiteColor).make(),
                  ),
                  "Log in with".text.color(fontGrey).make(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  )
                ],
              )
                  .box
                  .rounded
                  .width(context.screenWidth - 70)
                  .white
                  .padding(const EdgeInsets.all(20))
                  .make(),
            ],
          ).scrollVertical(),
        ),
      ),
    );
  }
}
