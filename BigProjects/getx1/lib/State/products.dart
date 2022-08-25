import 'package:app5/Model/items.dart';
import 'package:get/get.dart';
import 'dart:math' show Random;

class Products extends GetxController {
  final RxList<Item> _items = List.generate(
    100,
    (index) => Item(
        id: index,
        name: 'Product $index',
        price: Random().nextDouble() * 100,
        inWishList: false.obs),
  ).obs;

  List<Item> get items {
    return [..._items];
  }

  List<Item> get wishListItems {
    return _items.where((item) => item.inWishList.value == true).toList();
  }
}
