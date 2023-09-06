import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/constant_list.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/categories/categories_viewmodel.dart';
import 'package:h_mart/views/categories_details/categories_details_view.dart';
import 'package:h_mart/widgets/background.dart';

class CategoriesView extends StatelessWidget {
  CategoriesView({super.key});

  final CategoriesViewModel viewModel = Get.put(CategoriesViewModel());

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
        child: Scaffold(
      appBar: AppBar(
        title: "Categories".text.fontFamily(bold).white.make(),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              mainAxisExtent: 200,
              crossAxisSpacing: 8),
          itemBuilder: (context, index) {
            return Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(15),
              child: Column(
                children: [
                  Image.asset(
                    categoriesImgList[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  "${categoriesTxtList[index]}"
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make()
                ],
              ).box.clip(Clip.antiAlias).outerShadowSm.white.roundedSM.make(),
            );
          },
        ),
      ),
    ));
  }
}
