import 'package:e_canteen/home_screen/home_screen.dart';
import 'package:e_canteen/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Canteen',
      initialRoute: RoutePaths.login,
      getPages: AppPages.pages,
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          final token = settings.arguments as String;
          return GetPageRoute(
            settings: settings,
            page: () => HomeScreen(token: token),
          );
        }
        return null;
      },
      defaultTransition: Transition.cupertino,
    );
  }
}