import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_commerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:fruit_commerce_app/feature/splash/presentation/views/splash_view.dart';
import 'package:fruit_commerce_app/generated/l10n.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const FruitHub(),
    ),
  );
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
      builder: DevicePreview.appBuilder,
    );
  }
}
