import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/utils/app_images.dart';
import 'package:fruit_commerce_app/feature/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
                  0,
          image: Assets.imagesOnBoarding1Image,
          backgroundImage: Assets.imagesOnBoarding1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في'),
              Text('Fruit'),
              Text('HUB'),
            ],
          ),
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
                  0,
          image: Assets.imagesOnBoarding2Image,
          backgroundImage: Assets.imagesOnBoarding2BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في'),
              Text('Fruit'),
              Text('HUB'),
            ],
          ),
        )
      ],
    );
  }
}
