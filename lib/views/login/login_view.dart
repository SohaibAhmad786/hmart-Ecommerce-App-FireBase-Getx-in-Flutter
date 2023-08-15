import 'package:h_mart/views/login/login_viewmodel.dart';
import 'package:h_mart/views/signup/signup_view.dart';
import 'package:h_mart/widgets/applogo.dart';
import 'package:h_mart/widgets/background.dart';
import 'package:h_mart/widgets/custom_buttons.dart';
import 'package:h_mart/widgets/custom_textfields.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:h_mart/consts/constant_list.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final LoginViewModel viewModel = Get.put(LoginViewModel());

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
              loginToHmartTxt(),
              Column(
                children: [
                  Form(
                    key: viewModel.loginKey,
                    child: Column(
                      children: [
                        emailTxtField(),
                        passwordTxtField(),
                      ],
                    ),
                  ),
                  forgetPasswordTxt(),
                  loginBtn(),
                  orCreateTxt(),
                  signUpBtn(),
                  loginWithTxt(),
                  socialIconsList()
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

  Widget loginToHmartTxt() {
    return "Login to H Mart"
        .text
        .white
        .fontFamily(semibold)
        .wide
        .make()
        .paddingSymmetric(vertical: 20);
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

  Widget passwordTxtField() {
    return CustomTextField13(
      controller: viewModel.passwordController,
      fillColor: lightGrey,
      hintText: "Password",
      title: "Password",
      keyboardType: TextInputType.text,
    );
  }

  Widget forgetPasswordTxt() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
            onTap: () {}, child: "Forgot Password".text.color(redColor).make()),
      ),
    );
  }

  Widget loginBtn() {
    return CustomElevatedBtn(
      height: 40,
      width: double.infinity,
      onPressed: () {
        viewModel.loginBtn();
      },
      backgroundColor: redColor,
      child: "LOGIN".text.color(whiteColor).make(),
    );
  }

  Widget orCreateTxt() {
    return "or, create a new account"
        .text
        .color(fontGrey)
        .make()
        .paddingSymmetric(vertical: 5);
  }

  Widget signUpBtn() {
    return CustomElevatedBtn(
      height: 40,
      width: double.infinity,
      onPressed: () {
        Get.to(() => SignUpView());
      },
      backgroundColor: golden.withOpacity(.7),
      child: "SIGNUP".text.color(whiteColor).make(),
    );
  }

  Widget loginWithTxt() {
    return "Log in with".text.color(fontGrey).make();
  }

  Widget socialIconsList() {
    return Row(
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
    );
  }
}
