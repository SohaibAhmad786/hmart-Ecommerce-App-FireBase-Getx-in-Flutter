import 'dart:async';
import 'package:get/get.dart';
import 'package:h_mart/views/login/login_view.dart';

class SplashViewModel extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Timer(
      const Duration(seconds: 3),
      () {
        Get.to( ()=> const LoginView());
      },
    );
  }
}
