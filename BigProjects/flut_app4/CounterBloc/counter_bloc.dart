import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterInc implements CounterEvent {}

class CounterDec implements CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterInc>((event, emit) => emit(state + 1));
    on<CounterDec>((event, emit) => emit(state - 1));
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
