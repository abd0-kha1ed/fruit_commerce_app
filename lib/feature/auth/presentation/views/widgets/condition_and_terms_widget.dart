import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/utils/app_colors.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/custom_check_box.dart';

class ConditionAndTermsWidget extends StatefulWidget {
  const ConditionAndTermsWidget({super.key});

  @override
  State<ConditionAndTermsWidget> createState() =>
      _ConditionAndTermsWidgetState();
}

class _ConditionAndTermsWidgetState extends State<ConditionAndTermsWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
            onChecked: (value) {
              isTermsAccepted = value;
              setState(() {});
            },
            isChecked: isTermsAccepted),
        const SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: AppStyles.semiBold13
                      .copyWith(color: const Color(0xFF949D9E)),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style: AppStyles.semiBold13
                      .copyWith(color: AppColors.kPrimaryColorLight),
                ),
                TextSpan(
                  text: ' ',
                  style: AppStyles.semiBold13.copyWith(
                    color: const Color(0xFF616A6B),
                  ),
                ),
                TextSpan(
                  text: 'الخاصة',
                  style: AppStyles.semiBold13.copyWith(
                    color: AppColors.kPrimaryColorLight,
                  ),
                ),
                TextSpan(
                    text: ' ',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF616A6B),
                    )),
                TextSpan(
                  text: 'بنا',
                  style: AppStyles.semiBold13.copyWith(
                    color: AppColors.kPrimaryColorLight,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
