import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/home/home_view.dart';
import 'package:h_mart/views/login/login_view.dart';

class SplashViewModel extends GetxController {
  @override
  void onReady() {
    super.onReady();
    chooseNextScreen();
  }

  chooseNextScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        auth.authStateChanges().listen((User? user) {
          if (user == null) {
            Get.to(() => LoginView());
          } else {
            Get.to(() => HomeView());
          }
        });
      },
    );
  }
}
