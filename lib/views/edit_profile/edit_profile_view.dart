import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/edit_profile/edit_profile_viewmodel.dart';
import 'package:h_mart/widgets/background.dart';
import 'package:h_mart/widgets/custom_buttons.dart';
import 'package:h_mart/widgets/custom_textfields.dart';

class EditProfileView extends StatelessWidget {
  EditProfileView({super.key});

  final EditProfileViewModel viewModel = Get.put(EditProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 80, width: double.infinity),
              Obx(
                () => Column(
                  children: [
                    viewModel.userImage.value.path.isEmpty
                        ? CircleAvatar(
                            backgroundColor: Colors.grey.shade400,
                            radius: 45,
                            child: const Icon(
                              Icons.person,
                              size: 50,
                            ),
                          )
                        : Image.file(
                            File(viewModel.userImage.value.path),
                            width: 100,
                            fit: BoxFit.cover,
                          ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.heightBox,
                    SizedBox(width: 100, child: changeBtn()),
                    Form(
                      key: viewModel.editKey,
                      child: Column(
                        children: [
                          nameTxtField(),
                          passwordTxtField(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    saveBtn(),
                  ],
                )
                    .box
                    .rounded
                    .width(context.screenWidth - 50)
                    .white
                    .padding(const EdgeInsets.all(20))
                    .make(),
              ),
            ],
          ).scrollVertical(),
        ),
      ),
    );
  }

  Widget changeBtn() {
    return CustomElevatedBtn(
      height: 40,
      width: double.infinity,
      onPressed: () {
        viewModel.changeImgBtn();
      },
      backgroundColor: redColor,
      child: "Change".text.color(whiteColor).make(),
    );
  }

  Widget nameTxtField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: CustomTextField13(
        controller: viewModel.nameController,
        fillColor: lightGrey,
        hintText: "Name",
        title: "Name",
        keyboardType: TextInputType.name,
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

  Widget saveBtn() {
    return CustomElevatedBtn(
      height: 40,
      width: double.infinity,
      onPressed: () {
        viewModel.saveBtn();
      },
      backgroundColor: redColor,
      child: "Save".text.color(whiteColor).make(),
    );
  }
}
