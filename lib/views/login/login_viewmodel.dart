import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/consts/global_variables.dart';
import 'package:h_mart/views/home/home_view.dart';

class LoginViewModel extends GetxController {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    emailController.clear();
    passwordController.clear();
  }

  loginBtn() async {
    if (loginKey.currentState!.validate()) {
      GlobalVariables.showLoader.value = true;
      await loginMethod(emailController.text, passwordController.text)
          .then((value) {
        GlobalVariables.showLoader.value = false;

        if (value != null) {
          Get.to(() => HomeView());
          VxToast.show(Get.context!, msg: "User Logged In Successfully");
        }
      }).onError((error, stackTrace) {
        GlobalVariables.showLoader.value = false;
        print("%%%%%%%%%%$error%%%%%%%%");
      });
    }
  }
  //Login Method

  Future<UserCredential?> loginMethod(String email, String password) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(Get.context!,
          msg: "FIREBASE AUTH EXCEPTION::::: ${e.toString()}  :::::");
    }
    return userCredential;
  }
}
