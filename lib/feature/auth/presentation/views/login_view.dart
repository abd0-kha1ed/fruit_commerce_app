import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل دخول'),
      body: LoginViewBody(),
    );
  }

  
}
