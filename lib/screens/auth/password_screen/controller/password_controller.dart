import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumquick/screens/auth/password_screen/password_setup.dart';

class PasswordSetupController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  void goToPasswordSetup() {
    Get.toNamed(PasswordSetup.routeName);
  }
}
