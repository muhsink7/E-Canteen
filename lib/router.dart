import 'package:e_canteen/home_screen/home_binding.dart';
import 'package:e_canteen/home_screen/home_screen.dart';
import 'package:get/get.dart';

import 'login_screen/login_binding.dart';
import 'login_screen/login_screen.dart';

class RoutePaths {
  static const String login = '/';
  static const String homeScreen = '/home';
  }

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: RoutePaths.login,
      binding: LoginBinding(),
      page: () =>  const LoginScreen(),
    ),
    GetPage(
      name: RoutePaths.homeScreen,
      binding: HomeBinding(),
      page: () =>  const HomeScreen(token: '',),
    ),
  ];
}