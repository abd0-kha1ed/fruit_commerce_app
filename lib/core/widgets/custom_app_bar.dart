import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/utils/app_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: AppStyles.bold19,
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios)),
    );
  }