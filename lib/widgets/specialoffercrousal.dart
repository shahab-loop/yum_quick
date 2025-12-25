import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/generated/assets.gen.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager/theme_manager.dart';
import 'package:food_delivery_app/core/utils/size_utils.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SpecialOffersCarousel extends StatefulWidget {
  const SpecialOffersCarousel({super.key});

  @override
  State<SpecialOffersCarousel> createState() => _SpecialOffersCarouselState();
}

class _SpecialOffersCarouselState extends State<SpecialOffersCarousel> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<String> banners = [
    Assets.images.deal.path,
    Assets.images.chilli.path,
    Assets.images.burger.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160.h,
          child: PageView.builder(
            controller: _controller,
            itemCount: banners.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    banners[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Gap(8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(banners.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              width: _currentPage == index ? 20.w : 8.w, // Long when selected
              height: 6.h,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? ThemeManager.white
                    : Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
            );
          }),
        ),
      ],
    );
  }
}

