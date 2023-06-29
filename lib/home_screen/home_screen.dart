import 'package:e_canteen/home_screen/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  final String token;

  const HomeScreen({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            if (controller.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(controller.formattedDate,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical : 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Canteen",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.products.length,
                            itemBuilder: (context, index) {
                              final product = controller.products[index];
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ListTile(
                                  minVerticalPadding: 10.0,
                                  leading: Container(
                                    width: 80,
                                    height: 82,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                    BoxShadow(
                                    color: Color(0xffefefef),
                                      offset: Offset(
                                        0.5,
                                        0.5,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 0.5,
                                    ),],
                                  ),
                                    child: Image.network(
                                      'https://d2u7jaxqnqlx88.cloudfront.net/media/10/product/card/${product.coverImage}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Text(product.name ?? "",style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  subtitle: Text('₹ ${product.price}',style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  trailing: SizedBox(
                                    width: 100.0,
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            controller.decreaseQuantity(index);
                                            controller.calculateTotal(index);
                                          },
                                          child: const Icon(Icons.remove),
                                        ),
                                        Obx(() => Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Center(
                                                child: Text(
                                                    product.quantity.toString()),
                                              ),
                                            )),
                                        GestureDetector(
                                          child: const Icon(Icons.add),
                                          onTap: () {
                                            controller.increaseQuantity(index);
                                            controller.calculateTotal(index);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    // Handle add item functionality
                                    // You can add your logic here
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70.0,
                    color: const Color(0xff718341),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total: ₹ ${controller.total.value.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                                ),
                              ),
                              onPressed: () {

                              },
                              child: const Text(
                                'Place order',
                                style: TextStyle(
                                  color: Color(0xff718341),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
