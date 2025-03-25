import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_commerce_app/core/services/get_it_services.dart';
import 'package:fruit_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_commerce_app/feature/auth/domain/repos/auth_repo.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SignUpViewBody(),
      ),
    );
  }
}
