
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/views/profile/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final ProfileViewModel viewModel = Get.put(ProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}