import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController storeIdController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    togglePasswordVisibility();
    update();
  }
  void togglePasswordVisibility() {
      isPasswordVisible = !isPasswordVisible;
    update();
  }
}