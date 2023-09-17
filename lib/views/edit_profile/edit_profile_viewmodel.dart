import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/consts/global_variables.dart';
import 'package:h_mart/views/profile/profile_model.dart';
import 'package:h_mart/views/profile/profile_viewmodel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class EditProfileViewModel extends GetxController {
  GlobalKey<FormState> editKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<File> userImage = File('').obs;
  Rx<ProfileModel> profileModel = ProfileModel().obs;

  var profileImageLink;

  @override
  void onInit() {
    var data = Get.arguments["data"];
    profileModel.value = data;
    super.onInit();
    setInitialData();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.clear();
    passwordController.clear();
    userImage.value = File('');
    final ProfileViewModel model = Get.find();
    model.getProfileDetailsFromFireBase();
  }

  saveBtn() async {
    try {
      GlobalVariables.showLoader.value = true;
      var store = firestore.collection(userCollecetion).doc(currentUser!.uid);
      print("object::: $profileImageLink");

      await store.set({
        "name": nameController.text,
        "password": passwordController.text,
        "image": profileImageLink,
      }, SetOptions(merge: true)).then((value) {
        Get.back();
        VxToast.show(Get.context!, msg: "Profile updated Successfully");
        GlobalVariables.showLoader.value = false;
      });
    } catch (e) {
      print(e.toString());
      GlobalVariables.showLoader.value = false;
    }
  }

  changeImgBtn() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      userImage.value = File(image.path);
      uploadProfileImage();
    }
  }

  setInitialData() {
    nameController.text = profileModel.value.name ?? "";
    passwordController.text = profileModel.value.password ?? "";
  }

  uploadProfileImage() async {
    GlobalVariables.showLoader.value = true;
    var filename = basename(userImage.value.path);
    var destination = 'images/${currentUser!.uid}/$filename';
    Reference reference = FirebaseStorage.instance.ref().child(destination);
    await reference.putFile(File(userImage.value.path));
    await reference.getDownloadURL().then((value) {
      profileImageLink = value;
      GlobalVariables.showLoader.value = false;
    });
  }
}
