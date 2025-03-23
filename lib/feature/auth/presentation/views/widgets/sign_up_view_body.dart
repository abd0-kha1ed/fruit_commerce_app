import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/constant.dart';
import 'package:fruit_commerce_app/core/utils/app_colors.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';
import 'package:fruit_commerce_app/core/widgets/custom_button.dart';
import 'package:fruit_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/condition_and_terms_widget.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/have_account_already_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
                hintText: 'الاسم كامل', textInputType: TextInputType.name),
            const SizedBox(height: 16),
            CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress),
            const SizedBox(height: 16),
            CustomTextFormField(
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword),
            const SizedBox(height: 24),
            ConditionAndTermsWidget(),
            const SizedBox(height: 30),
            CustomButton(text: 'إنشاء حساب جديد'),
            const SizedBox(height: 26),
            const HaveAccountAlreadyWidget(),
          ],
        ),
      ),
    );
  }
}
