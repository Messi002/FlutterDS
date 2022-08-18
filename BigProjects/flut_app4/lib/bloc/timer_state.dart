import 'package:equatable/equatable.dart';
part of 'timer_bloc.dart';


abstract class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object?> get props => [duration];
}

class TimerInitial extends TimerState {
  TimerInitial(super.duration);

  @override
  String toString() {
    return 'TimerInitial {duration: $duration}';
  }
}

class TimerRunPause extends TimerState{
  TimerRunPause(super.duration);
  @override
  String toString() {
    return 'TimerRunPause {duration: $duration}';
  }
}

class TimerRunInProgress extends TimerState{
  TimerRunInProgress(super.duration);
@override
  String toString() {
    return 'TimerRunInProgress {duration: $duration}';
  }
}

class TimerRunComplete extends TimerState{
  TimerRunComplete():super(0);

}
