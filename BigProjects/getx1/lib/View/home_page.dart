import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app5/State/products.dart';
import 'package:app5/View/wish_list_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final Products product = Get.put(Products());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'MIR-Shop',
      )),
      body: Column(
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Get.to( () => WishList()),
            child: Container(
              width: 300,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: Obx(() => Text(
                    'Wish List: ${product.wishListItems.length}',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: product.items.length,
              itemBuilder: (context, index) {
                final pdt = product.items[index];
                return Card(
                  key: ValueKey(pdt.id),
                  margin: const EdgeInsets.all(5),
                  child: ListTile(
                    title: Text(
                      pdt.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    subtitle: Text("\$${pdt.price.toStringAsFixed(2)}"),
                    trailing: Obx(() => IconButton(
                        onPressed: () {
                          if (!pdt.inWishList.value) {
                            product.addItem(pdt.id);
                          } else {
                            product.removeItem(pdt.id);
                          }
                        },
                        icon: pdt.inWishList.value
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ))),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
