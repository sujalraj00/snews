import 'package:get/get.dart';
import 'package:snews/res/routes/route_name.dart';

class SplashController extends GetxController{
  SplashController();


  @override
  void onInit() {
    navigateScreen();
    super.onInit();
  }

  navigateScreen(){
    Future.delayed(const Duration(seconds: 3), (){
      Get.offNamed(RouteName.onboarding);
    });
  }
}