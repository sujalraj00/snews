import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/res/consts/assets.dart';
import 'package:snews/res/consts/colors.dart';
import 'package:snews/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/onboarding_controller.dart';

class OnBoardingPage extends GetView<OnBoardingController> {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var titles = [
      AppString.onboardingTitle0,
      AppString.onboardingTitle1,
      AppString.onboardingTitle2
    ];
    var desc = [
      AppString.onboardingDes0,
      AppString.onboardingDes1,
      AppString.onboardingDes2
    ];
    return Scaffold(
      body: PageView.builder(
          controller: controller.pageController,
          itemCount: 3,
          onPageChanged: (value) => controller.changeIndex(value),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Image.asset(
                      "${AppAssets.onboarding}$index.png",
                    )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        titles[index],
                        style: AppStyles().semibold(size: 16),
                      ),
                      7.heightBox,
                      VxBox()
                          .size(100, 5)
                          .color(AppColor.primaryButton)
                          .rounded
                          .make(),
                      30.heightBox,
                      Text(
                        desc[index],
                        style:
                            AppStyles().semibold(color: AppColor.secondaryText),
                      ),
                    ],
                  ),
                ))
              ],
            );
          }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  controller.onContinueOrSkipPressed();
                },
                child: Text(
                  AppString.skip,
                  style: AppStyles().semibold(color: AppColor.secondaryText),
                )),
            Obx(
              () => Row(
                children: List.generate(
                    3,
                    (index) => VxBox()
                        .size(index == controller.currentIndex ? 30 : 5, 5)
                        .rounded
                        .color(index == controller.currentIndex
                            ? AppColor.primaryButton
                            : AppColor.sliderDot)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            Obx(() => controller.currentIndex < 2
                ? IconButton(
                    onPressed: () {
                      controller.changePage(controller.currentIndex);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.secondaryButton,
                    ),
                  )
                : TextButton(
                    onPressed: () {
                      controller.onContinueOrSkipPressed();
                    },
                    child: Text(
                      AppString.continueText,
                      style:
                          AppStyles().semibold(color: AppColor.secondaryButton),
                    )))
          ],
        ),
      ),
    );
  }
}
