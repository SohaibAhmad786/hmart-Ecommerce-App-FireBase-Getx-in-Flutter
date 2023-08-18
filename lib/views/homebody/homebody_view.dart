import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/colors.dart';
import 'package:h_mart/consts/constant_list.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/homebody/homebody_viewmodel.dart';
import 'package:h_mart/widgets/custom_textfields.dart';
import 'package:h_mart/widgets/featuredbtn.dart';
import 'package:h_mart/widgets/homebtn.dart';

class HomeBodyView extends StatelessWidget {
  HomeBodyView({super.key});

  final HomeBodyViewModel viewModel = Get.put(HomeBodyViewModel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 200,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            slidersList[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) => homeBtns(
                    height: context.screenHeight * 0.18,
                    width: context.screenWidth / 2.5,
                    image: index == 0 ? icTodaysDeal : icFlashDeal,
                    onPress: index == 0 ? () {} : () {},
                    title: index == 0 ? "Today's Deal" : "Flash Sale"),
              ),
            ),
            20.heightBox,
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList2.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 200,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            slidersList2[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                3,
                (index) => homeBtns(
                    height: context.screenHeight * 0.13,
                    width: context.screenWidth / 3.5,
                    image: index == 0
                        ? icTopCategories
                        : index == 1
                            ? icBrands
                            : icTopSeller,
                    onPress: index == 0
                        ? () {}
                        : index == 1
                            ? () {}
                            : () {},
                    title: index == 0
                        ? "Top Categories"
                        : index == 1
                            ? "Brands"
                            : "Top Sellers"),
              ),
            ),
            20.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: "Featured Categories"
                  .text
                  .fontFamily(semibold)
                  .size(22)
                  .color(darkFontGrey)
                  .align(TextAlign.left)
                  .make()
                  .pOnly(left: 16),
            ),
            20.heightBox,
            Row(
              children: List.generate(
                3,
                (index) => Column(
                  children: [
                    featuredBtn(
                        image: imgUpperList[index], title: txtUpperList[index]),
                    featuredBtn(
                        image: imgLowerList[index], title: txtLowerList[index]),
                  ],
                ),
              ),
            ).scrollHorizontal(),
            20.heightBox,
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              decoration: const BoxDecoration(color: redColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Featured Product"
                      .text
                      .white
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: List.generate(
                        6,
                        (index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    imgP1,
                                    width: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                10.heightBox,
                                "Laptop 4GB/64GB"
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                                10.heightBox,
                                "\$400"
                                    .text
                                    .fontFamily(semibold)
                                    .color(redColor)
                                    .make(),
                              ],
                            )
                                .box
                                .margin(
                                    const EdgeInsets.symmetric(horizontal: 5))
                                .rounded
                                .padding(const EdgeInsets.only(
                                    left: 8, top: 8, bottom: 8))
                                .white
                                .make()),
                  ).scrollHorizontal(),
                  10.heightBox,
                ],
              ),
            ),
            20.heightBox,
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList2.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 200,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            slidersList2[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            20.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: "All Products"
                  .text
                  .fontFamily(semibold)
                  .size(18)
                  .color(darkFontGrey)
                  .make()
                  .pOnly(left: 15),
            ),
            5.heightBox,
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  mainAxisExtent: 300),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        imgP3,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Spacer(),
                    "Laptop 4GB/64GB"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    10.heightBox,
                    "\$400".text.fontFamily(semibold).color(redColor).make(),
                  ],
                )
                    .box
                    .roundedSM
                    .cyan500
                    .shadowSm
                    .margin(
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    )
                    .padding(const EdgeInsets.only(left: 8, top: 8, bottom: 8))
                    .white
                    .make();
              },
            ),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}
