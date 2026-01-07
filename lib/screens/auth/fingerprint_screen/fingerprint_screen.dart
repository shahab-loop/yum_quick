import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:yumquick/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:yumquick/core/navigations/routes/routes.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/screens/auth/fingerprint_screen/controller/fingerprint_controller.dart';
import 'package:yumquick/widgets/basescaffold.dart';
import 'package:yumquick/widgets/custom_elevatedbutton.dart';

class FingerprintScreen extends StatelessWidget {
  static const String routeName = '/fingerprintScreen';
  const FingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FingerprintScreenController controller =
        Get.find<FingerprintScreenController>();
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
                          'Set Your Fingerprint',
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
                          Gap(78.h),
                          // fingerprint svg
                          Gap(79.h),
                          Row(
                            children: [
                              CustomElevatedButton(
                                width: 155.w,
                                height: 35.h,
                                buttonColor: ThemeManager.orange2,
                                text: 'Skip',
                                onPressed: () {
                                  NavigationHelper.navigateTo(Routes.homeScreen);
                                },
                                textStyle: TextStyle(fontSize: 22),
                              ),
                              Gap(13.h),
                              CustomElevatedButton(
                                width: 155.w,
                                height: 35.h,
                                buttonColor: ThemeManager.orangeBase,
                                text: 'Continue',
                                onPressed: () {},
                                textStyle: TextStyle(fontSize: 22),
                              ),
                            ],
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
