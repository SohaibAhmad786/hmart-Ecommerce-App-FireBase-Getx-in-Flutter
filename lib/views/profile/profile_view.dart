import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/profile/profile_viewmodel.dart';
import 'package:h_mart/widgets/background.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final ProfileViewModel viewModel = Get.put(ProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make()
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
