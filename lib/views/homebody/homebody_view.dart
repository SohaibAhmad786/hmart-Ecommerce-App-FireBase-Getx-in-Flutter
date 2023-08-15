import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/colors.dart';
import 'package:h_mart/consts/constant_list.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/homebody/homebody_viewmodel.dart';
import 'package:h_mart/widgets/custom_textfields.dart';

class HomeBodyView extends StatelessWidget {
  HomeBodyView({super.key});

  final HomeBodyViewModel viewModel = Get.put(HomeBodyViewModel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomTextField13(
              controller: viewModel.searchController,
              fillColor: whiteColor,
              hintText: "Search anything...",
              keyboardType: TextInputType.text,
              sufixIcon: const Icon(Icons.search),
            ),
          ),
          VxSwiper.builder(
            aspectRatio: 16 / 9,
            autoPlay: true,
            height: 150,
            enlargeCenterPage: true,
            itemCount: slidersList.length,
            itemBuilder: (context, index) {
              return Image.asset(
                slidersList[index],
                fit: BoxFit.fill,
              )
                  .box
                  .rounded
                  .clip(Clip.antiAlias)
                  .margin(const EdgeInsets.symmetric(horizontal: 10.0))
                  .make();
            },
          ),
        ],
      ),
    );
  }
}
