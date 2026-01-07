import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumquick/screens/auth/login_screen/login_screen.dart';

class LoginScreenController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   void goToLoginScreen() {
    Get.toNamed(LoginScreen.routeName);
  }
}
