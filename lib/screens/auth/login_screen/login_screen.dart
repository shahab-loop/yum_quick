import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/screens/auth/login_screen/controller/loginscreen_controller.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/loginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginScreenController controller = Get.put(LoginScreenController());
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_new_outlined,color: ThemeManager.orangeBase,),
            Text('data'),
          ],
        ),
      ],
    ),);
  }
}
