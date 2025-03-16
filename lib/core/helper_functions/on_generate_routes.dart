import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/feature/presentation/views/splash_view.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return MaterialPageRoute(builder: (context)=> const Scaffold());
  }
}
