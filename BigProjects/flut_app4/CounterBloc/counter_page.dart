import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: BlocBuilder<CounterBloc, int>(builder: (context, state) {
        return Center(
          child:Text("$state",style: TextStyle(fontSize: 24.0),)
        );
      }),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(onPressed: () => context.read<CounterBloc>().add(CounterInc()),
          child: Icon(Icons.add),
          ),
          ),

          Padding(padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(onPressed: () => context.read<CounterBloc>().add(CounterDec()),
          child: Icon(Icons.remove),
          ),
          ),
        ],
      ),
    );
  }
}


