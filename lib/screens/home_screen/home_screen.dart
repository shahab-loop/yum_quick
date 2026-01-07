import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/screens/home_screen/controller/home_controller/home_controller.dart';
import 'package:yumquick/widgets/basescaffold.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller =
    Get.find<HomeController>();
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
                      child: Column(),
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
