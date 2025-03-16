import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_commerce_app/core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            SvgPicture.asset(Assets.imagesSplashPlanet),
          ],
        ),
        SvgPicture.asset(Assets.imagesSplashLogo),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }
}
