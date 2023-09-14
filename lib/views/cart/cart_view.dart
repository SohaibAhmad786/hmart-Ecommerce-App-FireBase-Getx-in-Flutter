
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_mart/consts/consts.dart';
import 'package:h_mart/views/cart/cart_viewmodel.dart';

class CartView extends StatelessWidget {
  CartView({super.key});

  final CartViewModel viewModel =Get.put(CartViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "Cart is Empty!".text.fontFamily(bold).size(20).color(redColor).make(),
      ),
    );
  }
}