import 'package:get/get.dart';
import 'package:yumquick/screens/auth/login_page/login.dart';

class LoginController extends GetxController {
  void goToLoginScreen() {
    Get.toNamed(Login.routeName);
  }
}
