import 'package:get/get.dart';
import 'package:yumquick/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:yumquick/screens/splash_screen/controller/splash_controller.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}