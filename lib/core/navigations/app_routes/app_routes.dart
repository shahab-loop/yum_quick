import 'package:get/get.dart';
import 'package:yumquick/core/bindings/bindings.dart';
import 'package:yumquick/core/navigations/routes/routes.dart';
import 'package:yumquick/screens/splash_screen/splash.dart';
class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splashScreen,
      binding: SplashBinding(),
      page: () => SplashScreen(),
    ),
  ];
}
