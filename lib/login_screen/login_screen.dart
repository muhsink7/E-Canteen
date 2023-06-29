import 'dart:convert';

import 'package:e_canteen/constants/constants.dart';
import 'package:e_canteen/login_screen/login_controller.dart';
import 'package:e_canteen/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key, });

  Future<void> login(String email, String password) async {
    const url = 'https://api.denzo.io/api/cus/v1/login';
    final headers = {'Accept': 'application/json'};
    final body = {
      'username': controller.emailController.text,
      'password': controller.passwordController.text,
      'store_id': '10',
    };

    final response =
    await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      // Login successful
      final responseData = jsonDecode(response.body);
      final token =
      responseData['token']; // Extract the token from the response
      // Perform necessary actions with the login response
      // Navigate to the home screen and pass the token as arguments
      Get.toNamed(RoutePaths.homeScreen, arguments: token);
    } else {
      // Login failed
      const errorMessage = 'Login failed. Please try again.';
      showDialog(
        context: Get.context!,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text(errorMessage),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(Images.image2),
                    ),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              hintText: '+918086808680',
                              suffixIcon: Visibility(
                                visible: controller.emailController.text.isNotEmpty,
                                child: const Icon(Icons.check),
                              ),
                            ),
                          ),
                          TextField(
                            controller: controller.passwordController,
                            obscureText: !controller.isPasswordVisible,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: '123456',
                              suffixIcon: Column(
                                  children: [
                                GestureDetector(
                                onTap: (){
                                  controller.togglePasswordVisibility;
                                  },
                                    child: SizedBox(
                                      width: 5.0,
                                      child: Icon(
                                        controller.isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),),
                                    const SizedBox(width: 5.0),
                                    SizedBox(
                                      width: 5.0,
                                      child: Visibility(
                                        visible: controller
                                            .passwordController.text.isNotEmpty,
                                        child: const Icon(Icons.check),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          const SizedBox(height: 25.0),
                          SizedBox(
                            width: 200,
                            height: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff718341),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                                ),
                              ),
                              onPressed: () {
                                login(controller.emailController.text.toString(),
                                    controller.passwordController.text.toString());
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          // Adjust this value based on your requirements
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                Images.image1,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
