import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';

class AuthViewModel extends GetxController {
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

  storeUserData({required String name, required String email, required String password}) async {
    DocumentReference store =
        firestore.collection(userCollecetion).doc(auth.currentUser!.uid);
    await store.set({
      "name": name,
      "email": email,
      "password": password,
      "image": "",
    });
  }

  // Sign Out Method

  signOutMehtod()async{
    try {
      auth.signOut();
    } catch (e) {
      VxToast.show(Get.context!, msg: e.toString());
    }
  }


}
