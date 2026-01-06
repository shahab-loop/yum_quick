import 'package:get/get.dart';
import 'package:yumquick/screens/auth/password_screen/password_setup.dart';

class PasswordSetupController extends GetxController {
  void goToPasswordSetup() {
    Get.toNamed(PasswordSetup.routeName);
  }
}
