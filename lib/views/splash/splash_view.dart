import 'package:h_mart/widgets/applogo.dart';
import 'package:h_mart/consts/consts.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/views/splash/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final SplashViewModel viewModel = Get.put(SplashViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            50.heightBox,
            appLogo(),
            20.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            20.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(bold).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
