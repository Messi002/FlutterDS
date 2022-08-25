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
    //TODO: return [..._items];
    return _items.toList();
  }

  //This will return the proudcts that were added to wist list
  List<Item> get wishListItems {
    return _items.where((item) => item.inWishList.value == true).toList();
  }

  //Add item to wish list
  void addItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = true;
  }
    void removeItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = false;
  }
}
