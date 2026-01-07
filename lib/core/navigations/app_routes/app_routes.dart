import 'package:get/get.dart';
import 'package:yumquick/core/bindings/bindings.dart';
import 'package:yumquick/core/navigations/routes/routes.dart';
import 'package:yumquick/screens/auth/fingerprint_screen/fingerprint_screen.dart';
import 'package:yumquick/screens/auth/login_page/login.dart';
import 'package:yumquick/screens/auth/login_screen/login_screen.dart';
import 'package:yumquick/screens/auth/password_screen/password_setup.dart';
import 'package:yumquick/screens/auth/signup_screen/signup_screen.dart';
import 'package:yumquick/screens/home_screen/home_screen.dart';
import 'package:yumquick/screens/onboarding_screen/onboarding_screen.dart';
import 'package:yumquick/screens/splash_screen/splash.dart';
class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splashScreen,
      binding: SplashBinding(),
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.onboardingScreen,
      binding: OnboardingBinding(),
      page: () => OnboardingScreen(),
    ),
    GetPage(
      name: Routes.login,
      binding: LoginBinding(),
      page: () => Login(),
    ),
    GetPage(
      name: Routes.loginScreen,
      binding: LoginScreenBinding(),
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.signupScreen,
      binding: SignupScreenBinding(),
      page: () => SignupScreen(),
    ),
    GetPage(
      name: Routes.passwordSetup,
      binding: PasswordSetupBinding(),
      page: () => PasswordSetup(),
    ),
    GetPage(
      name: Routes.fingerprintScreen,
      binding: FingerprintScreenBinding(),
      page: () => FingerprintScreen(),
    ),
    GetPage(
      name: Routes.homeScreen,
      binding: HomeScreenBinding(),
      page: () => HomeScreen(),
    ),
  ];
}
