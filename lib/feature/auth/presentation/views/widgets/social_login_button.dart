import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.image});
  final void Function() onPressed;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xFFDCDEDE), width: 1),
                borderRadius: BorderRadius.circular(16))),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            textAlign: TextAlign.center,
            title,
            style: AppStyles.semiBold16,
          ),
          leading: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
