import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:yumquick/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:yumquick/core/navigations/routes/routes.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/foam_validator.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/gen/assets.gen.dart';
import 'package:yumquick/screens/auth/login_page/controller/login_controller.dart';
import 'package:yumquick/widgets/basescaffold.dart';
import 'package:yumquick/widgets/custom_elevatedbutton.dart';
import 'package:yumquick/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/loginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();
    return BaseScaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: Form(
          key: controller.formKey,
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
                            'Log In',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Gap(70.h),
                    Container(
                      height: 668.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ThemeManager.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 322.w,
                        height: 689.h,
                        child: Padding(
                          padding: EdgeInsets.only(top: 34, left: 35, right: 35),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                'Welcome',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                              Gap(19.h),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                                style: Theme.of(context).textTheme.headlineSmall,
                              ),
                              Gap(46.h),
                              Text(
                                'Email or Mobile Number',
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                              Gap(10.h),
                              CustomTextFormFieldWidget(
                                controller: controller.emailController,
                                hintText: 'example@example.com',
                                backgroundColor: ThemeManager.yellow2,
                                TextColor: ThemeManager.lightBrown,
                                width: 322,
                                radius: 30,
                                validator: (String? value) =>
                                    emailValidator(value, context),                      ),
                              Gap(22.h),
                              Text(
                                'Password',
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                              Gap(10.h),
                              CustomTextFormFieldWidget(
                                controller: controller.passwordController,
                                hintText: '*************',
                                backgroundColor: ThemeManager.yellow2,
                                TextColor: ThemeManager.lightBrown,
                                radius: 30,
                                obscure: true,
                                validator: (String? value) =>
                                    passwordValidator(value, context),
                              ),
                              Gap(14.h),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Text(
                                      'Forgot Password?',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Gap(61.h),
                              Align(
                                alignment: .center,
                                child: CustomElevatedButton(
                                  width: 207.w,
                                  height: 45.h,
                                  buttonColor: ThemeManager.orangeBase,
                                  text: 'log In',
                                  onPressed: () {
                                    NavigationHelper.navigateTo(Routes.homeScreen);
                                  },
                                  textStyle: TextStyle(fontSize: 22),
                                ),
                              ),
                              Gap(29.h),
                              Align(
                                alignment: .center,
                                child: Text(
                                  'or sign up with',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                              ),
                              Gap(7.h),
                              Align(
                                alignment: .center,
                                child: SizedBox(
                                  width: 120.w,
                                  child: Row(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      Container(
                                        width: 34.w,
                                        height: 34.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(13),
                                          color: ThemeManager.orange2,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            Assets.svgs.gmail.path,
                                            height: 18.h,
                                            width: 18.w,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 34.w,
                                        height: 34.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(13),
                                          color: ThemeManager.orange2,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            Assets.svgs.facebook.path,
                                            height: 18.h,
                                            width: 18.w,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 34.w,
                                        height: 34.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(13),
                                          color: ThemeManager.orange2,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            Assets.svgs.fingerprint.path,
                                            height: 18.h,
                                            width: 18.w,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Gap(31.9.h),
                              Row(
                                mainAxisAlignment: .center,
                                children: [
                                  Text(
                                    'Don’t have an account? ',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineSmall,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      NavigationHelper.navigateTo(
                                        Routes.signupScreen,
                                      );
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            
                // Positioned(
                //   bottom: 0.h,
                //   child: Container(
                //     height: 60.h,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //       color: ThemeManager.orangeBase,
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         _buildNavItem(Assets.svgs.home.path, () {}),
                //         _buildNavItem(Assets.svgs.boofy.path, () {}),
                //         _buildNavItem(Assets.svgs.heart2.path, () {}),
                //         _buildNavItem(Assets.svgs.notes.path, () {}),
                //         _buildNavItem(Assets.svgs.helpline.path, () {}),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //   Widget _buildNavItem(String assetName, VoidCallback onTap) {
  //     return GestureDetector(
  //       onTap: onTap,
  //       child: SvgPicture.asset(
  //         assetName,
  //         color: ThemeManager.white,
  //         height: 24,
  //         width: 24,
  //       ),
  //     );
  //   }
}
