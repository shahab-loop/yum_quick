import 'package:get/get.dart';
import 'package:yumquick/screens/auth/signup_screen/signup_screen.dart';

class SignupScreenController extends GetxController {
  void goToSignupScreen() {
    Get.toNamed(SignupScreen.routeName);
  }
}
