import 'package:flutter/material.dart';
import 'package:h_mart/views/splash/splash_view.dart';
import 'consts/consts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: appname,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'sans_regular',
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(
              color: darkFontGrey
            )
          ),
        ),
        home: SplashView());
  }
}
