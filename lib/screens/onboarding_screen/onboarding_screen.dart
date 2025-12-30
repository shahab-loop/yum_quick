import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:yumquick/widgets/custom_elevatedbutton.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/onboardingScreen';
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());

    return Scaffold(
      body: SafeArea(top: true,bottom: false,
        child: Stack(
          children: [
            PageView.builder(
              controller: controller.pageController,
              itemCount: controller.onboardingList.length,
              onPageChanged: controller.onPageChanged,
              itemBuilder: (context, index) {
                final data = controller.onboardingList[index];
                return Image.asset(
                  data.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                );
              },
            ),
        
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 338.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ThemeManager.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Gap(34.h),
        
                    Obx(() => SvgPicture.asset(
                      controller.currentItem.svgs,
                      color: ThemeManager.orangeBase,
                      height: 40.h,
                    )),
        
                    Gap(18.h),
        
                    Obx(() => Text(
                      controller.currentItem.title,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
        
                    Gap(19.h),
        
                    Obx(() => SizedBox(
                      height: 42.h,
                      width: 272.w,
                      child: Text(
                        controller.currentItem.description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
        
                    Gap(31.h),
        
                    Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.onboardingList.length,
                            (index) => Container(
                          margin: const EdgeInsets.all(4),
                          width: controller.currentIndex.value == index
                              ? 16
                              : 12,
                          height: 4.h,
                          decoration: BoxDecoration(
                            color: controller.currentIndex.value == index
                                ? ThemeManager.orangeBase
                                : ThemeManager.yellow2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )),
        
                    Gap(32.h),
        
                    Obx(() => CustomElevatedButton(
                      height: 36.h,
                      width: 133.w,
                      buttonColor: ThemeManager.orangeBase,
                      text: controller.currentIndex.value == 2
                          ? "Get Started"
                          : "Next",
                      onPressed: controller.nextPage,
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
