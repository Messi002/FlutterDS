import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app5/State/products.dart';

class WishList extends StatelessWidget {
  WishList({Key? key}) : super(key: key);
  final product = Get.find<Products>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Wish List: ${product.wishListItems.length}')),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: product.wishListItems.length,
          itemBuilder: (context, index) {
            final pdt = product.wishListItems[index];
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
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ))),
              ),
            );
          }, );
      }),
    );
  }
}
