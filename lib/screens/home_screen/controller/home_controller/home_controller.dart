import 'package:get/get.dart';
import 'package:yumquick/screens/home_screen/home_screen.dart';

class HomeController extends GetxController {
  void goToHomeScreen() {
    Get.toNamed(HomeScreen.routeName);
  }
}
