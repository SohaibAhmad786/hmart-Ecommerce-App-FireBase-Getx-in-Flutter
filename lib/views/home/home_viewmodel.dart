import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/views/cart/cart_view.dart';
import 'package:h_mart/views/categories/categories_view.dart';
import 'package:h_mart/views/homebody/homebody_view.dart';
import 'package:h_mart/views/profile/profile_view.dart';

class HomeViewModel extends GetxController {
  RxInt bottomNavBarIndex = 0.obs;
  List<Widget> bodyList = <Widget>[
    HomeBodyView(),
    CategoriesView(),
    CartView(),
    ProfileView(),
  ].obs;
}
