import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/res/consts/assets.dart';
import 'package:snews/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Image.asset(AppAssets.logo, width: 140,),
            Spacer(),
            Text(AppString.poweredBy,  style: AppStyles().regular(size:12 )),
            20.heightBox,
          ],
        ),
      )
    );

  }
}