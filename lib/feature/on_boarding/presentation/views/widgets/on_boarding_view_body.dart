import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/constant.dart';
import 'package:fruit_commerce_app/core/services/shared_preferences_single_tone.dart';
import 'package:fruit_commerce_app/core/utils/app_colors.dart';
import 'package:fruit_commerce_app/core/widgets/custom_button.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/login_view.dart';
import 'package:fruit_commerce_app/feature/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  var currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      currentPage = _pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: _pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.kPrimaryColor,
            color: currentPage == 1 ? AppColors.kPrimaryColor :
            AppColors.kPrimaryColor.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
              text: 'ابدأ الان',
              onPressed: () {
                Prefs.setBool(kIsOnBoardingViewSeenKey, true);
                Navigator.of(context).pushReplacementNamed((LoginView.routeName));
              },
            ),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
