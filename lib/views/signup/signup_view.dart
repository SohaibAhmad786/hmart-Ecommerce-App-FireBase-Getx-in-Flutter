import 'package:get/get.dart';
import 'package:h_mart/views/signup/signup_viewmodel.dart';
import 'package:h_mart/widgets/applogo.dart';
import 'package:h_mart/widgets/background.dart';
import 'package:h_mart/widgets/custom_buttons.dart';
import 'package:h_mart/widgets/custom_checkbox.dart';
import 'package:h_mart/widgets/custom_textfields.dart';
import 'package:h_mart/consts/consts.dart';

import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final SignUpViewModel viewModel = Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80, width: double.infinity),
              appLogo(),
              joinThehMartTxtField(),
              Column(
                children: [
                  Form(
                    key: viewModel.signupKey,
                    child: Column(
                      children: [
                        nameTxtField(),
                        emailTxtField(),
                        paswordTxtField(),
                        reTypePasswordTxtField(),
                      ],
                    ),
                  ),
                  termsAndConditionCheckBox(),
                  signUpBtn(),
                  alreadyHaveAnAccTxt(),
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

  Widget joinThehMartTxtField() {
    return "Join the H Mart"
        .text
        .white
        .fontFamily(semibold)
        .wide
        .make()
        .paddingSymmetric(vertical: 20.0);
  }

  Widget nameTxtField() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: CustomTextField13(
        controller: viewModel.nameController,
        fillColor: lightGrey,
        hintText: "Name",
        title: "Name",
        keyboardType: TextInputType.name,
      ),
    );
  }

  Widget emailTxtField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: CustomTextField13(
        controller: viewModel.emailController,
        fillColor: lightGrey,
        hintText: "Email",
        title: "Email",
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget paswordTxtField() {
    return CustomTextField13(
      controller: viewModel.passwordController,
      fillColor: lightGrey,
      hintText: "Password",
      title: "Password",
      keyboardType: TextInputType.text,
    );
  }

  Widget reTypePasswordTxtField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: CustomTextField13(
        controller: viewModel.retypePasswordController,
        fillColor: lightGrey,
        hintText: "Retype Password",
        title: "Retype Password",
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget termsAndConditionCheckBox() {
    return Obx(
      () => SimpleCheckBox2(
        title: "I agree to the Terms & Conditions & Privacy Policy",
        value: viewModel.termsAndConditions.value,
        onChanged: (value) {
          viewModel.termsAndConditions.value = value;
        },
      ),
    );
  }

  Widget signUpBtn() {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: CustomElevatedBtn(
          height: 40,
          width: double.infinity,
          onPressed: viewModel.termsAndConditions.value
              ? () {
                  viewModel.signUpBtn();
                }
              : () {},
          backgroundColor:
              viewModel.termsAndConditions.value ? redColor : lightGrey,
          child: "SIGN UP".text.color(whiteColor).make(),
        ),
      ),
    );
  }

  Widget alreadyHaveAnAccTxt() {
    return HStack([
      "Already have an account".text.color(fontGrey).make(),
      8.widthBox,
      "LOGIN".text.color(redColor).make().onTap(() {
        Get.back();
      }),
    ]);
  }
}
