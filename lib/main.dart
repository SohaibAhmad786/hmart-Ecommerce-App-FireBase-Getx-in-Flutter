import 'package:flutter/material.dart';
import 'package:h_mart/views/splash/splash_view.dart';
import 'consts/consts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
              iconTheme: IconThemeData(color: darkFontGrey)),
        ),
        home: SplashView());
  }
}
