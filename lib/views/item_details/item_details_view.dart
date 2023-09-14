import 'package:h_mart/consts/constant_list.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:h_mart/consts/colors.dart';
import 'package:h_mart/widgets/custom_buttons.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 0.0,
        title: "Dummy Title".text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  VxSwiper.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  10.heightBox,
                  "Dummy Title"
                      .text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Brands"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .size(16)
                                .make(),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      ),
                    ],
                  )
                      .box
                      .height(70)
                      .color(textfieldGrey)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .make(),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(darkFontGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                              3,
                              (index) => VxBox()
                                  .size(40, 40)
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 6))
                                  .make(),
                            ),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity: ".text.color(darkFontGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              "0"
                                  .text
                                  .size(16)
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .make(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                ),
                              ),
                              10.widthBox,
                              "(0 available)".text.color(darkFontGrey).make(),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total: ".text.color(darkFontGrey).make(),
                          ),
                          Row(
                            children: [
                              "\$30,000"
                                  .text
                                  .size(16)
                                  .color(redColor)
                                  .fontFamily(bold)
                                  .make(),
                            ],
                          ),
                        ],
                      )
                          .box
                          .color(textfieldGrey)
                          .padding(const EdgeInsets.all(8))
                          .make(),
                    ],
                  ).box.padding(const EdgeInsets.all(8)).make(),
                  10.heightBox,
                  "Description: "
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  " This is a dummy item and dummy description here...."
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (notification) {
                      notification.disallowIndicator();
                      return false;
                    },
                    child: ListView(
                      shrinkWrap: true,
                      children: List.generate(
                        itemDetailsTxtList.length,
                        (index) => ListTile(
                          title: itemDetailsTxtList[index]
                              .toString()
                              .text
                              .color(darkFontGrey)
                              .fontFamily(semibold)
                              .make(),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ),
                  ),
                  10.heightBox,
                  "Products you may like"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
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
              ).box.white.shadowSm.make(),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomElevatedBtn(
              height: 40,
              width: double.infinity,
              onPressed: () {},
              backgroundColor: redColor,
              child: "Add to cart".text.color(whiteColor).make(),
            ),
          ),
        ],
      ),
    );
  }
}
