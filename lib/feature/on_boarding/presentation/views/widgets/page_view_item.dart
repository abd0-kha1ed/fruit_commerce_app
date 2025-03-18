import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_commerce_app/constant.dart';
import 'package:fruit_commerce_app/core/services/shared_preferences_single_tone.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.backgroundImage,
      required this.title,
      required this.isVisible});
  final String image;
  final String subtitle;
  final String backgroundImage;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              GestureDetector(
                onTap: () {
                  Prefs.setBool(kIsOnBoardingViewSeenKey, true);
                  Navigator.of(context)
                      .pushReplacementNamed((LoginView.routeName));
                },
                child: Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'تخط',
                      style: AppStyles.regular13
                          .copyWith(color: Color(0xFF949D9E)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            style: AppStyles.semiBold13.copyWith(color: Color(0xFF4E5556)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
