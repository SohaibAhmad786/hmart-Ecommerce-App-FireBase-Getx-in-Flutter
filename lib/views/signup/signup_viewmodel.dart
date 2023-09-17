import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/global_variables.dart';
import 'package:h_mart/views/home/home_view.dart';

import 'package:h_mart/consts/consts.dart';

class SignUpViewModel extends GetxController {
  GlobalKey<FormState> signupKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();
  RxBool termsAndConditions = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
    termsAndConditions.value = false;
  }

  //SignUp Method

  Future<UserCredential?> signupMethod(String email, String password) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(Get.context!,
          msg: "FIREBASE AUTH EXCEPTION::::: ${e.toString()}  :::::");
    }
    return userCredential;
  }

  // Store data Method OR SignUp method

  storeUserData(
      {required String name,
      required String email,
      required String password}) async {
    DocumentReference store =
        firestore.collection(userCollecetion).doc(auth.currentUser!.uid);
    await store.set({
      "name": name,
      "email": email,
      "password": password,
      "image": "",
      "id": currentUser!.uid,
      "cart_count": "00",
      "order_count": "00",
      "wishlist_count": "00",

    });
  }

  signUpBtn() async {
    if (signupKey.currentState!.validate()) {
      GlobalVariables.showLoader.value = true;
      if (passwordController.text == retypePasswordController.text) {
        try {
          await signupMethod(emailController.text, passwordController.text)
              .then((value) {
            storeUserData(
                name: nameController.text,
                email: emailController.text,
                password: passwordController.text);
          }).then((value) {
            GlobalVariables.showLoader.value = false;
            Get.offAll(() => HomeView());
            VxToast.show(Get.context!, msg: "User Logged In Successfully");
          });
        } catch (e) {
          auth.signOut();
          GlobalVariables.showLoader.value = false;
          VxToast.show(Get.context!, msg: e.toString());
        }
      } else {
        GlobalVariables.showLoader.value = false;
        VxToast.show(Get.context!, msg: "Password did not match");
      }
    }
  }
}
