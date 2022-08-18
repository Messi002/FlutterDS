import 'package:flut_app/bloc/timer_bloc.dart';
import 'package:flut_app/ticker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimperPage extends StatelessWidget {
  const TimperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => TimerBloc(ticker: Ticker()),
    child: const TimerView(), 
    );
  }
}

class TimerView extends StatelessWidget {
  const TimerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  }
}
