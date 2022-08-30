// void main(List<String> args) {
//   Iterable<int> iterables = [1, 2, 3, 4, 6, 8];
//   print(iterables.elementAt(1));

//   bool test = iterables.every((element) => element < 3);
//   print(test);

//   var evenNum = iterables.where((elt) => elt.isEven);
//   for (var num in evenNum) {
//     print('$num is even');
//   }
//   Iterable<int> output = iterables.map((e) => e * 2);
//   for (var l in output) {
//     print('${l/2} has been multiplied by 2 to give $l');
//   }
// }

// class Square extends Shape {}

// class Circle extends Shape {
//   Circle();
//   void PrintFunc() => print('This is a circle passed');
// }

// class Shape {
//   Shape();
//   factory Shape.fromTypeName(String typeName) {
//     if (typeName == 'square') return Square();
//     if (typeName == 'circle') return Circle();
//     throw ArgumentError('Unrecognized $typeName');
//   }
// }

// void main(List<String> args) {
//   Shape.fromTypeName('rectangle');
// }

Future<String> createOrderMessage() async{
  var order =await fetchUserOrder();
  return 'Your order is something like $order';
}

Future<String> fetchUserOrder() async{
    
}
