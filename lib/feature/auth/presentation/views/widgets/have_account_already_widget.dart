import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/utils/app_colors.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';

class HaveAccountAlreadyWidget extends StatelessWidget {
  const HaveAccountAlreadyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'تمتلك حساب بالفعل؟',
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFFA3ACAC),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: 'تسجيل دخول',
            style: AppStyles.semiBold16
                .copyWith(color: AppColors.kPrimaryColorDark),
          ),
        ],
      ),
      textAlign: TextAlign.right,
    );
  }
}
