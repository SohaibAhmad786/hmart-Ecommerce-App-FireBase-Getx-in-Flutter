import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/views/home/home_view.dart';

class LoginViewModel extends GetxController {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  loginBtn() {
    Get.to(() => HomeView());
  }
}
