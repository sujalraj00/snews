import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/res/consts/consts.dart';
import 'package:snews/widgets/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/login_controller.dart';

class LoginPage extends GetView<LoginController>{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppString.login,
            style: AppStyles().semibold(size: 16),),
            Text(AppString.followSimple,
              style: AppStyles().semibold(size: 12, color: AppColor.secondaryText),),
            30.heightBox,
            const CustomTextField(hint: AppString.emailHint, label: AppString.email, isPassword: false,),
            const CustomTextField(hint: AppString.passwordHint, label: AppString.password, isPassword: true,),
            30.heightBox,
            SizedBox(
                width: context.screenWidth,
                child: ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryButton, padding: const EdgeInsets.symmetric(vertical: 12)),
                    onPressed: (){}, child: Text(AppString.login, style: TextStyle(color: Colors.white)))),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppString.dontHaveAccount, style: AppStyles().regular(size: 14, color: AppColor.secondaryText),),
                TextButton(onPressed: (){
                  controller.navigatetoSignUp();
                }, child: Text(AppString.signUp, style: AppStyles().regular(),))
              ],
            )
          ],
        ),
      ),
    );
  }
}