import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:yumquick/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:yumquick/core/navigations/routes/routes.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/screens/auth/password_screen/controller/password_controller.dart';
import 'package:yumquick/widgets/basescaffold.dart';
import 'package:yumquick/widgets/custom_elevatedbutton.dart';
import 'package:yumquick/widgets/custom_textfield.dart';

import 'package:yumquick/gen/assets.gen.dart';

class PasswordSetup extends StatelessWidget {
  static const String routeName = '/passwordSetup';
  const PasswordSetup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PasswordSetupController());

    return BaseScaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Gap(10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: ThemeManager.orangeBase,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Set Password',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Gap(70.h),
                  Container(
                    width: double.infinity,
                    height: 668.h,
                    decoration: BoxDecoration(
                      color: ThemeManager.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(36.h),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
          
                          Gap(43.h),
                          Text(
                            'Password',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          Gap(10.h),
                          CustomTextFormFieldWidget(
                            hintText: '*************',
                            backgroundColor: ThemeManager.yellow2,
                            TextColor: ThemeManager.lightBrown,
                            width: 322,
                            radius: 30,
                            obscure: true,
                            isPasswordField: true,
                              suffixSvg: Assets.svgs.visibilityoff.path,suffixColor: ThemeManager.orangeBase),
                          Gap(31.h),
                          Text(
                            'Confirm Password',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          Gap(10.h),
                          CustomTextFormFieldWidget(
                            hintText: '*************',
                            backgroundColor: ThemeManager.yellow2,
                            TextColor: ThemeManager.lightBrown,
                            width: 322,
                            radius: 30,
                            obscure: true,
                            isPasswordField: true,
                          suffixSvg: Assets.svgs.visibilityoff.path,suffixColor: ThemeManager.orangeBase,)
                          ,
                          Gap(57.h),
                          Align(
                            alignment: .center,
                            child: CustomElevatedButton(
                              width: 207.w,
                              height: 45.h,
                              buttonColor: ThemeManager.orangeBase,
                              text: 'Sign Up',
                              onPressed: () {
                                NavigationHelper.navigateTo(Routes.fingerprintScreen);
                              },
                              textStyle: TextStyle(fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
