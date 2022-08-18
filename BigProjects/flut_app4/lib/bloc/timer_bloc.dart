import 'package:bloc/bloc.dart';
import 'package:flut_app/ticker.dart';
import 'timer_event.dart';
import 'timer_state.dart';
import 'dart:async';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  static const int _duration = 60;
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker}) : _ticker = ticker, super(const TimerInitial(_duration));
}
