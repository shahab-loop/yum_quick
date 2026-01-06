import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:yumquick/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:yumquick/core/navigations/routes/routes.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/gen/assets.gen.dart';
import 'package:yumquick/screens/auth/login_page/controller/login_controller.dart';
import 'package:yumquick/screens/auth/login_screen/login_screen.dart';
import 'package:yumquick/widgets/basescaffold.dart';
import 'package:yumquick/widgets/custom_elevatedbutton.dart';

class Login extends StatelessWidget {
  static const String routeName = '/login';
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ThemeManager.orangeBase,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 178.95.h,
              width: 202.w,
              child: Image.asset(Assets.images.yellowHeart.path),
            ),
            Gap(26.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'YUM',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(color: ThemeManager.yellowBase),
                ),
                Text(
                  'QUICK',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(color: ThemeManager.white),
                ),
              ],
            ),
            Gap(30.4),
            SizedBox(
              height: 28.h,
              width: 295.w,
              child: Text(
                textAlign: TextAlign.center,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: ThemeManager.white),
              ),
            ),
            Gap(43),
            CustomElevatedButton(
              width: 207.w,
              height: 45.h,
              buttonColor: ThemeManager.yellowBase,
              text: 'Log In',textStyle:  Theme.of(context).textTheme.displayMedium?.copyWith(
              color:
              ThemeManager.orangeBase,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
              textColor: ThemeManager.orangeBase,
              onPressed: () {
                NavigationHelper.navigateTo(Routes.loginScreen);
              },
            ),

            Gap(4),
            CustomElevatedButton(
              width: 207.w,
              height: 45.h,
              buttonColor: ThemeManager.yellow2,
              text: 'Sign Up',
              textStyle:  Theme.of(context).textTheme.displayMedium?.copyWith(
              color:
              ThemeManager.orangeBase,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),textColor: ThemeManager.orangeBase,
              onPressed: () { NavigationHelper.navigateTo(Routes.signupScreen);
              },
            ),

          ],
        ),
      ),
    );
  }
}
