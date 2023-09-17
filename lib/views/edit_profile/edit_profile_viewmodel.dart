import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileViewModel extends GetxController {
  GlobalKey<FormState> editKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<File> userImage = File('').obs;

  @override
  void onClose() {
    super.onClose();
    nameController.clear();
    passwordController.clear();
  }

  saveBtn() {}

  changeImgBtn() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      userImage.value = File(image.path);
    }
  }
}
