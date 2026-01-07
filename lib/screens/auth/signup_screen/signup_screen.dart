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
import 'package:yumquick/screens/auth/signup_screen/controller/signup_controller.dart';
import 'package:yumquick/widgets/basescaffold.dart';
import 'package:yumquick/widgets/custom_elevatedbutton.dart';
import 'package:yumquick/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = '/signupScreen';

  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupScreenController controller =
        Get.find<SignupScreenController>();
    return BaseScaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
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
                            'New Account',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Gap(70.h),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ThemeManager.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(46.h),

                            Text(
                              'Full name',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Gap(10.h),
                            CustomTextFormFieldWidget(
                              controller: controller.nameController,
                              hintText: 'Adam Smith',
                              backgroundColor: ThemeManager.yellow2,
                              TextColor: ThemeManager.lightBrown,
                              radius: 30,
                              validator: (String? value) =>
                                  customValidator(value, context),
                            ),
                            Gap(10.h),
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
                              width: 322,
                              radius: 30,
                              obscure: true,
                              validator: (String? value) =>
                                  passwordValidator(value, context),
                            ),
                            Gap(10.h),
                            Text(
                              'Email',
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
                                  emailValidator(value, context),
                            ),
                            Gap(10.h),
                            Text(
                              'Mobile Number',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Gap(10.h),
                            CustomTextFormFieldWidget(
                              controller: controller.numberController,
                              hintText: '+ 123 456 789',
                              backgroundColor: ThemeManager.yellow2,
                              TextColor: ThemeManager.lightBrown,
                              radius: 30,
                              validator: (String? value) =>
                                  customValidator(value, context),),
                            Gap(10.h),
                            Text(
                              'Date of birth',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Gap(10.h),
                            CustomTextFormFieldWidget(
                              controller: controller.dobController,
                              hintText: 'DD / MM /YYY',
                              backgroundColor: ThemeManager.yellow2,
                              TextColor: ThemeManager.lightBrown,
                              radius: 30,
                              validator: (String? value) =>
                                  customValidator(value, context),
                            ),
                            Gap(20.h),
                            Align(
                              alignment: .center,
                              child: SizedBox(
                                width: 200.w,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'By continuing, you agree to ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: ThemeManager.black2,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    children: [
                                      TextSpan(
                                        text: 'Terms of Use',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium,
                                      ),
                                      const TextSpan(text: ' and '),
                                      TextSpan(
                                        text: 'Privacy Policy.',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Gap(20.h),
                            Align(
                              alignment: .center,
                              child: CustomElevatedButton(
                                width: 207.w,
                                height: 45.h,
                                buttonColor: ThemeManager.orangeBase,
                                text: 'Sign Up',
                                onPressed: () {
                                  NavigationHelper.navigateTo(
                                    Routes.passwordSetup,
                                  );
                                },
                                textStyle: TextStyle(fontSize: 22),
                              ),
                            ),
                            Gap(9.h),
                            Align(
                              alignment: .center,
                              child: Text(
                                'or sign up with',
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall,
                              ),
                            ),
                            Gap(9.h),
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
                            Gap(8.h),
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
                                      Routes.loginScreen,
                                    );
                                  },
                                  child: Text(
                                    'Login In',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                            Gap(30.h),
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
      ),
    );
  }
}
