import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumquick/screens/auth/signup_screen/signup_screen.dart';

class SignupScreenController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  void goToSignupScreen() {
    Get.toNamed(SignupScreen.routeName);
  }
}
