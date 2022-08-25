import 'package:app5/Model/items.dart';
import 'package:get/get.dart';
import 'dart:math' show Random;

class Products extends GetxController{
  final RxList<Item> _items = List.generate(100, (index) => Item(id: id, name: name, price: price, inWishList: inWishList))
}