import 'package:get/get.dart';
import 'package:snews/res/routes/route_name.dart';

class LoginController extends GetxController {
  LoginController();

  navigatetoSignUp(){
    Get.toNamed(RouteName.signup);
}
}