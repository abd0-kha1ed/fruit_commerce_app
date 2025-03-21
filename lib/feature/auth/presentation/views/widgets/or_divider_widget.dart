import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
        const SizedBox(width: 18),
        Text('او', style: AppStyles.semiBold16),
        const SizedBox(width: 18),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
      ],
    );
  }
}
