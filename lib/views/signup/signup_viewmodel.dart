import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpViewModel extends GetxController {
  GlobalKey<FormState> signupKey=GlobalKey<FormState>(); 
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();
  RxBool termsAndConditions=false.obs;
  
  
  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
    termsAndConditions.value=false;
  }

  signUpBtn() {}
}
