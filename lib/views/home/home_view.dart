import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeViewModel viewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: Obx(() => viewModel.bodyList[viewModel.bottomNavBarIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: viewModel.bottomNavBarIndex.value,
          backgroundColor: whiteColor,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            viewModel.bottomNavBarIndex.value = value;
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset(
                icHome,
                color: viewModel.bottomNavBarIndex.value==0?redColor:null,
                width: 26,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icCategories,
                color: viewModel.bottomNavBarIndex.value==1?redColor:null,
                width: 26,
              ),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icCart,
                color: viewModel.bottomNavBarIndex.value==2?redColor:null,
                width: 26,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icProfile,
                color: viewModel.bottomNavBarIndex.value==3?redColor:null,
                width: 26,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
