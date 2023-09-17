import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/constant_list.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/profile/profile_viewmodel.dart';
import 'package:h_mart/widgets/background.dart';
import 'package:h_mart/widgets/details_card.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final ProfileViewModel viewModel = Get.put(ProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              20.heightBox,
              Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "${viewModel.profileModel.value.name}"
                            .text
                            .white
                            .fontFamily(semibold)
                            .make(),
                        5.heightBox,
                        "${viewModel.profileModel.value.email}"
                            .text
                            .white
                            .fontFamily(semibold)
                            .make(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.editBtn();
                    },
                    child: const CircleAvatar(
                      backgroundColor: whiteColor,
                      child: Icon(
                        Icons.edit,
                        color: darkFontGrey,
                      ),
                    ),
                  ),
                  5.widthBox,
                  GestureDetector(
                    onTap: () {
                      viewModel.logoutBtn();
                    },
                    child: const CircleAvatar(
                      backgroundColor: whiteColor,
                      child: Icon(
                        Icons.logout_outlined,
                        color: redColor,
                      ),
                    ),
                  ),
                  5.widthBox,
                ],
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  detailsCard(
                      context.screenWidth / 4,
                      "${viewModel.profileModel.value.cartCount}",
                      "in your cart"),
                  detailsCard(
                      context.screenWidth / 4,
                      "${viewModel.profileModel.value.wishlistCount}",
                      "in your wishlist"),
                  detailsCard(
                      context.screenWidth / 4,
                      "${viewModel.profileModel.value.orderCount}",
                      "you ordered"),
                ],
              ),
              20.heightBox,
              ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(
                            profileBtnIconsList[index],
                            width: 30,
                            color: Colors.black,
                          ),
                          title:
                              profileBtnTxtList[index].toString().text.make(),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: 3)
                  .box
                  .white
                  .margin(const EdgeInsets.all(6))
                  .roundedSM
                  .shadowXs
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
