// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc/bloc.dart';

// Stream<int> countStream(int max) async* {
//   for (int i = 0; i < max; i++) {
//     yield i;
//   }
// }

// Future<int> sumStream(Stream<int> stream) async {
//   int sum = 0;
//   await for (int value in stream) {
//     sum += value;
//   }
//   return sum;
// }

// void main(List<String> args) async {
//   Stream<int> stream = countStream(8);
//   int sum = await sumStream(stream);
//   print(sum);
// }
