import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/constant.dart';
import 'package:fruit_commerce_app/core/utils/app_colors.dart';
import 'package:fruit_commerce_app/core/utils/app_images.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';
import 'package:fruit_commerce_app/core/widgets/custom_button.dart';
import 'package:fruit_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/or_divider_widget.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.emailAddress,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xFF949D9E),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppStyles.semiBold13
                      .copyWith(color: AppColors.kPrimaryColorLight),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(
              text: 'تسجيل دخول',
              onPressed: () {},
            ),
            const SizedBox(height: 33),
            const DontHaveAccountWidget(),
            const SizedBox(height: 33),
            const OrDividerWidget(),
            const SizedBox(height: 16),
            SocialLoginButton(
              title: 'تسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              title: 'تسجيل بواسطة أبل',
              image: Assets.imagesAppleIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              title: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
