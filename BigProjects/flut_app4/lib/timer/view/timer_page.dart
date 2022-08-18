import 'package:flut_app/bloc/timer_bloc.dart';
import 'package:flut_app/bloc/timer_event.dart';
import 'package:flut_app/bloc/timer_state.dart';
import 'package:flut_app/ticker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimperPage extends StatelessWidget {
  const TimperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerBloc(ticker: Ticker()),
      child: const TimerView(),
    );
  }
}

class TimerView extends StatelessWidget {
  const TimerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Demo')),
      body: Stack(
        children: [
          const Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: const Center(
                  child: const TimerText(),
                ),
              ),
              const Action()
            ],
          )
        ],
      ),
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondStr = (duration / 60).floor().toString().padLeft(2, '0');

    return Text(
      '$minutesStr : $secondStr',
      style: Theme.of(context).textTheme.headline1,
    );
  }
}

class Action extends StatelessWidget {
  const Action({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) =>  prev.runtimeType != state.runtimeType,
      builder: ((context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if(state is TimerInitial)...[
              FloatingActionButton(onPressed: () => context.read<TimerBloc>().add(TimerStarted(duration: state.duration)),
              child: const Icon(Icons.play_arrow),
              ),
            ],
               if(state is TimerRunInProgress)...[
              FloatingActionButton(onPressed: () => context.read<TimerBloc>().add(const TimerPaused()),
              child: const Icon(Icons.pause),
              ),
               FloatingActionButton(onPressed: () => context.read<TimerBloc>().add(const TimerReset()),
              child: const Icon(Icons.replay),
              ),
            ],
            if(state is TimerRunPause)...[
              FloatingActionButton(onPressed: () => context.read<TimerBloc>().add(const TimerResumed()),
              child: const Icon(Icons.play_arrow),
              ),
               FloatingActionButton(onPressed: () => context.read<TimerBloc>().add(const TimerReset()),
              child: const Icon(Icons.replay),
              ),
            ],
              if(state is TimerRunComplete)...[
              FloatingActionButton(onPressed: () => context.read<TimerBloc>().add(const TimerReset()),
              child: const Icon(Icons.replay),
              ),
            ],
          ],
        );
      })
      );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade500,
            ]),
      ),
    );
  }
}
