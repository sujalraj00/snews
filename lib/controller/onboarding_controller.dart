import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:snews/res/routes/route_name.dart';

class OnBoardingController extends GetxController{
  OnBoardingController();

  final _currentIndex   = 0.obs;
  get currentIndex => _currentIndex.value;
  set currentIndex(value) => _currentIndex.value = value;

  PageController? pageController;

  changeIndex(int value) {
    currentIndex = value;
  }

  changePage(int value){
    pageController?.animateToPage(value, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  onContinueOrSkipPressed() {
    Get.offNamed(RouteName.authentication);
  }
}