import 'package:e_canteen/models/product_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  bool isLoading = false;
  late DateTime currentDate;
  late String day;
  late String weekday;
  late String year;
  late String formattedDate = '';

  var quantity = 0.obs;
  RxDouble total = RxDouble(0.0); // Total value

  void toggleLoading() {
    isLoading = !isLoading;
    update();
  }

  List<Product> products = [];
  int selectedIndex = 0; // Selected product index

  @override
  void onInit() {
    super.onInit();

    currentDate = DateTime.now();
    day = currentDate.day.toString().padLeft(2, '0');
    weekday = _getWeekdayAbbreviation(currentDate.weekday);
    year = currentDate.year.toString();
    formattedDate = '$day $weekday $year';
    fetchProducts();
  }

  String _getWeekdayAbbreviation(int weekday) {
    switch (weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }

  void increaseQuantity([int? index]) {
    if (index != null && index >= 0 && index < products.length) {
      final product = products[index];
      product.quantity.value++; // Increase the quantity for the selected product
      calculateTotal(selectedIndex);
      update();
    }
  }

  void decreaseQuantity(int index) {
    if (index >= 0 && index < products.length) {
      final product = products[index];
      if (product.quantity.value > 0) {
        product.quantity.value--;
        calculateTotal(selectedIndex); // Recalculate total price for the selected index
        update();
      }
    }
  }

  void calculateTotal(int index) {
    selectedIndex = index;
    if (selectedIndex >= 0 && selectedIndex < products.length) {
      double totalPrice = 0.0;
      for (final product in products) {
        final productPrice = double.tryParse(product.price ?? '0.0');
        if (productPrice != null &&
            product.quantity.value != null &&
            product.quantity.value > 0) {
          totalPrice += productPrice * product.quantity.value;
        }
      }
      total.value = totalPrice;
    } else {
      total.value = 0.0;
    }
  }

  Future<void> fetchProducts() async {
    toggleLoading();
    const url = 'https://api.denzo.io/api/cus/v1/products?page=1';
    final token = Get.arguments as String;
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      var productsData = ProductsData.fromJson(jsonData);

      products = productsData.products?.data ?? [];
      update();
    } else {
      showDialog(
        context: Get.context!,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Failed to fetch complete products.'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
    toggleLoading();
  }

  void addToCart(Product product) async {
    const url = 'https://api.denzo.io/api/cus/v1/add-to-cart';
    final token = Get.arguments as String;
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final body = {
      'product': products[selectedIndex].id.toString(), // Use the selected product's id
      'quantity': quantity.value.toString(), // Use the selected quantity
    };

    try {
      final response =
      await http.post(Uri.parse(url), headers: headers, body: body);
      if (response.statusCode == 200) {
        // Request successful
        final responseData = jsonDecode(response.body);
        // Handle the response data as needed
      } else {
        // Request failed
        print('Request failed with status code ${response.statusCode}');
      }
    } catch (error) {
      // Exception occurred during the request
      print('Error: $error');
    }
  }
}
