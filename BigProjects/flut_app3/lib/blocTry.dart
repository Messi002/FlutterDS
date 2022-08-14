// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart' show immutable;
import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

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

// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() => emit(state + 1);

//   @override
//   void onChange(Change<int> change) {

//     super.onChange(change);
//     print(change);
//   }
// }

// Future<void> main(List<String> args) async {
//   final cubit = CounterCubit();
//   final subscription = cubit.stream.listen(print);
//   cubit.increment();
//     cubit.increment();
//   cubit.increment();
//   await Future.delayed(Duration.zero);
//   await subscription.cancel();
//   await cubit.close();
// }

// void main(List<String> args) {
//   final cubit = CounterCubit();
//   print(cubit.state);
//   cubit.increment();
//   print(cubit.state);
//     cubit.increment();
//   print(cubit.state);
//   cubit.close();
// }

//Using blocObserver

// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() {
//     addError(Exception('increment error!'), StackTrace.current);
//     emit(state + 1);
//   }

//   @override
//   void onChange(Change<int> change) {
//     super.onChange(change);
//     print(change);
//   }

//   @override
//   void onError(Object error, StackTrace stackTrace) {
//     print("$error, $stackTrace");
//     super.onError(error, stackTrace);
//   }
// }

// class simpleBlocObserver extends BlocObserver {
//   @override
//   void onChange(BlocBase bloc, Change change) {
//     super.onChange(bloc, change);
//     print('${bloc.runtimeType} $change');
//   }
// }

// void main(List<String> args) {
//   Bloc.observer = simpleBlocObserver();
//   Bloc.observer = simpleBlocObserver();
//   CounterCubit();
//   CounterCubit().increment();
//   CounterCubit().increment();
//   CounterCubit().close();
// }

//            BLOC PRATICALS
@immutable
abstract class CounterEvent {}

@immutable
class CounterInc implements CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterInc>((event, emit) {
      emit.log();
      emit(state + 1);
    });
  }
}

Future<void> main() async {
  final bloc = CounterBloc();
  print(bloc.state);
  bloc.add(CounterInc());
  await Future.delayed(Duration.zero);
  print(bloc.state);
  bloc.close();
}
