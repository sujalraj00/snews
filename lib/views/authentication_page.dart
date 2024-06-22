import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/controller/authentication_controller.dart';
import 'package:snews/res/consts/assets.dart';
import 'package:snews/res/consts/styles.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class AuthenticationPage extends GetView<AuthenticationController> {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.logo,
              width: 140,
            ),
            15.heightBox,
            Text(AppString.welcome, style: AppStyles().semibold(),),
            10.heightBox,
            Text(AppString.signInToContinue, style: AppStyles().regular(
                color: AppColor.secondaryText
            ),),
            const Spacer(),
            VxBox(
                child: Text(
                  AppString.signInGoogle,
                  style: AppStyles().regular(color: AppColor.white),
                ))
                .width(context.screenWidth - 25)
                .padding(
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .color(AppColor.google)
                .make(),

            10.heightBox,
            VxBox(
                child: Text(
                  AppString.signInFB,
                  style: AppStyles().regular(color: AppColor.white),
                ))
                .width(context.screenWidth - 25)
                .padding(
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .color(AppColor.fb)
                .make(),
            const Spacer(),

            TextButton(onPressed: () {
              controller.navigateToLogin();
            },
                child: Text(AppString.continueWithEmail,
                  style: AppStyles().regular(size: 14),)),
            10.heightBox,
            Text(
              AppString.privacyPolicyTermsCondition, style: AppStyles().regular(
                color: AppColor.secondaryText,
                size: 12
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {},
                    child: Text(AppString.privacyPolicy,
                      style: AppStyles().regular(size: 12),)),
                Text("and", style: AppStyles().regular(
                    size: 12, color: AppColor.secondaryText),),
                TextButton(onPressed: () {},
                    child: Text(AppString.termsCondition,
                        style: AppStyles().regular(size: 12)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
