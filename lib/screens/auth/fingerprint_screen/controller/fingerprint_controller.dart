import 'package:get/get.dart';
import 'package:yumquick/screens/auth/fingerprint_screen/fingerprint_screen.dart';

class FingerprintScreenController extends GetxController {
  void goToFingerprintScreen() {
    Get.toNamed(FingerprintScreen.routeName);
  }
}
