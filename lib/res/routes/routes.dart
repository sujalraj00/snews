import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:snews/controller/authentication_controller.dart';
import 'package:snews/controller/onboarding_controller.dart';
import 'package:snews/controller/splash_controller.dart';
import 'package:snews/res/routes/route_name.dart';
import 'package:snews/views/authentication_page.dart';
import 'package:snews/views/on_boarding.dart';
import 'package:snews/views/splash_page.dart';

class AppRoutes {
  static getRoutes() => [
        GetPage(
            name: RouteName.splash,
            page: () => const SplashPage(),
            binding: BindingsBuilder.put(() => SplashController())),
        GetPage(
            name: RouteName.onboarding,
            page: () => const OnBoardingPage(),
            binding: BindingsBuilder.put(() => OnBoardingController())),

       GetPage(
        name: RouteName.authentication,
        page: () =>  const AuthenticationPage(),
        binding: BindingsBuilder.put(() => AuthenticationController()))
      ];
}
