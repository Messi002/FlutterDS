import 'package:bloc/bloc.dart';
import 'package:flut_app/ticker.dart';
import 'timer_event.dart';
import 'timer_state.dart';
import 'dart:async';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  static const int _duration = 60;
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerInitial(_duration)) {
    on<TimerStarted>(_onStarted);
  }

  @override
  Future<void> close() {
    //TODO: change the null checker back to a ?
    _tickerSubscription!.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription!.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(TimerTicked(duration: duration)));
  }
}
