part of timer_bloc.dart;

// import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;
}
