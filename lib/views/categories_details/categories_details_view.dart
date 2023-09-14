import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/categories_details/categories_details_viewmodel.dart';
import 'package:h_mart/views/item_details/item_details_view.dart';
import 'package:h_mart/widgets/background.dart';

class CategoriesDetailsView extends StatelessWidget {
  CategoriesDetailsView({super.key, required this.title});

  final String title;

  final CategoriesDetailsViewModel viewModel =
      Get.put(CategoriesDetailsViewModel());

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: title.text.white.fontFamily(bold).make(),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: List.generate(
                    6,
                    (index) => "Pent Coat"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .size(150, 60)
                        .white
                        .rounded
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make(),
                  ),
                ).box.make().scrollHorizontal(),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                  ),
                  itemCount: 6,
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
                        "\$400"
                            .text
                            .fontFamily(semibold)
                            .color(redColor)
                            .make(),
                      ],
                    )
                        .box
                        .roundedSM
                        .cyan500
                        .shadowSm
                        .margin(
                          const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                        )
                        .padding(
                            const EdgeInsets.only(left: 8, top: 8, bottom: 8))
                        .white
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetailsView());
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}
