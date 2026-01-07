

import 'package:yumquick/screens/auth/fingerprint_screen/fingerprint_screen.dart';
import 'package:yumquick/screens/auth/login_page/login.dart';
import 'package:yumquick/screens/auth/login_screen/login_screen.dart';
import 'package:yumquick/screens/auth/password_screen/password_setup.dart';
import 'package:yumquick/screens/auth/signup_screen/signup_screen.dart';
import 'package:yumquick/screens/home_screen/home_screen.dart';
import 'package:yumquick/screens/onboarding_screen/onboarding_screen.dart';
import 'package:yumquick/screens/splash_screen/splash.dart';

class Routes {
  static const String splashScreen = SplashScreen.routeName;
  static const String onboardingScreen = OnboardingScreen.routeName;
  static const String login = Login.routeName;
  static const String loginScreen = LoginScreen.routeName;
  static const String signupScreen = SignupScreen.routeName;
  static const String passwordSetup = PasswordSetup.routeName;
  static const String fingerprintScreen = FingerprintScreen.routeName;
  static const String homeScreen = HomeScreen.routeName;
}
