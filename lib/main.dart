import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fruit_commerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:fruit_commerce_app/feature/presentation/views/splash_view.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return const FruitHub();
  }));
}

class FruitHub extends StatelessWidget {
const FruitHub({ super.key });
@override
Widget build(BuildContext context) {
return MaterialApp(
onGenerateRoute: onGenerateRoutes,
initialRoute: SplashView.routeName,

);
}
}