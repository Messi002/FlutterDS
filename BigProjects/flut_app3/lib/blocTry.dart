// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

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

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}

Future<void> main(List<String> args) async {
  final cubit = CounterCubit();
  final subscription = cubit.stream.listen(print);
  cubit.increment();
    cubit.increment();
  cubit.increment();
  await Future.delayed(Duration.zero);
  await subscription.cancel();
  await cubit.close();
}

// void main(List<String> args) {
//   final cubit = CounterCubit();
//   print(cubit.state);
//   cubit.increment();
//   print(cubit.state);
//     cubit.increment();
//   print(cubit.state);
//   cubit.close();
// }
