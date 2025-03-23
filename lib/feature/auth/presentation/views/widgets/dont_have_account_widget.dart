import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/utils/app_colors.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/sign_up_view.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تملك حساب؟',
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(text: ' ', style: AppStyles.semiBold16),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, SignUpView.routeName);
                },
              text: 'قم بإنشاء حساب',
              style: AppStyles.semiBold16.copyWith(
                color: AppColors.kPrimaryColorDark,
              )),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
