import 'package:get/get.dart';
import 'package:yumquick/screens/auth/login_page/controller/login_controller.dart';
import 'package:yumquick/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:yumquick/screens/splash_screen/controller/splash_controller.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenBinding());
  }
}
class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenBinding());
  }
}
class PasswordSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordSetupBinding());
  }
}
class FingerprintScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FingerprintScreenBinding());
  }
}