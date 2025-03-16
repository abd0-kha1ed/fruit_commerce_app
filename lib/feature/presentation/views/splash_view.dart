import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/feature/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
const SplashView({ super.key });
static const routeName = 'splsh_view';
@override
Widget build(BuildContext context) {
return Scaffold(
body: const SplashViewBody(),

);
}
}