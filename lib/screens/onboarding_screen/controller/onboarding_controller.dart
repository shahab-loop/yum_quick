import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yumquick/core/app_const/app_const.dart';
import 'package:yumquick/core/modal/model.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentIndex = 0.obs;

  final List<OnboardingModel> onboardingList = AppConst.onboardingData;

  OnboardingModel get currentItem => onboardingList[currentIndex.value];

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void nextPage() {
    if (currentIndex.value == onboardingList.length - 1) {
      Get.offAllNamed('/home');
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
