import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/res/consts/colors.dart';
import 'package:snews/res/consts/consts.dart';
import 'package:snews/res/consts/strings.dart';
import 'package:snews/res/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:AppString.appname,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily: Appfonts.regular,
        scaffoldBackgroundColor: AppColor.background,
        iconTheme: IconThemeData(
          color: AppColor.icon
        )
      ),
      getPages: AppRoutes.getRoutes(),
    );
  }
}

