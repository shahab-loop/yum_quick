import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/gen/assets.gen.dart';
import 'package:yumquick/widgets/basescaffold.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 178.95.h,
            width: 202.w,
            child: Image.asset(Assets.images.orangeHeart.path),
          ),
          Gap(26.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'YUM',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                'QUICK',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: ThemeManager.white),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
