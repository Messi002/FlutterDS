void main(List<String> args) {
  Iterable<int> iterables = [1, 2, 3, 4];
  print(iterables.elementAt(1));

  bool test = iterables.every((element) => element < 3);
  print(test);

  var evenNum = iterables.where((elt) => elt.isEven);
  for (var num in evenNum) {
    print('$num is even');
  }
}
