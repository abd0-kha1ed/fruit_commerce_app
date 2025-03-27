import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_commerce_app/constant.dart';
import 'package:fruit_commerce_app/core/widgets/custom_button.dart';
import 'package:fruit_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/condition_and_terms_widget.dart';
import 'package:fruit_commerce_app/feature/auth/presentation/views/widgets/have_account_already_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String _userName, _email, _password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                  onSaved: (userName) {
                    _userName = userName!;
                  },
                  hintText: 'الاسم كامل',
                  textInputType: TextInputType.name),
              const SizedBox(height: 16),
              CustomTextFormField(
                  onSaved: (email) {
                    _email = email!;
                  },
                  hintText: 'البريد الإلكتروني',
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 16),
              CustomTextFormField(
                  onSaved: (password) {
                    _password = password!;
                  },
                  hintText: 'كلمة المرور',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xFF949D9E),
                    ),
                  ),
                  textInputType: TextInputType.visiblePassword),
              const SizedBox(height: 24),
              ConditionAndTermsWidget(),
              const SizedBox(height: 30),
              CustomButton(
                  text: 'إنشاء حساب جديد',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                    context.read<SignupCubit>().createUserWithEmailAndPassword(
                        name: _userName, email: _email, password: _password);
                  }),
              const SizedBox(height: 26),
              const HaveAccountAlreadyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
