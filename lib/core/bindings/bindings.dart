import 'package:get/get.dart';
import 'package:yumquick/screens/auth/fingerprint_screen/controller/fingerprint_controller.dart';
import 'package:yumquick/screens/auth/login_page/controller/login_controller.dart';
import 'package:yumquick/screens/auth/login_screen/controller/loginscreen_controller.dart';
import 'package:yumquick/screens/auth/password_screen/controller/password_controller.dart';
import 'package:yumquick/screens/auth/signup_screen/controller/signup_controller.dart';
import 'package:yumquick/screens/home_screen/controller/home_controller/home_controller.dart';
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
    Get.lazyPut(() => LoginScreenController());
  }
}
class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenController());
  }
}
class PasswordSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordSetupController());
  }
}
class FingerprintScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FingerprintScreenController());
  }
}
class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}