
//
import 'package:yumquick/core/modal/model.dart';
import 'package:yumquick/gen/assets.gen.dart';

class AppConst {
  static final List<OnboardingModel> onboardingData = [
    OnboardingModel(
      svgs: Assets.svgs.transfer.path,
      title: "Order for Food",
      description:
          "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
      image: Assets.images.pizza.path,
    ),
    OnboardingModel(
      svgs: Assets.svgs.card.path,
      title: "Easy Payment",
      description:
      "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
      image: Assets.images.chocolateicecream.path,
    ),
    OnboardingModel(
      svgs: Assets.svgs.deliveryboy.path,
      title: "Get Fast Delivery",
      description:
      "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
      image: Assets.images.cofee.path,
    ),
  ];
}
