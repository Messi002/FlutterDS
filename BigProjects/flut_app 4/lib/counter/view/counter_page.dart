import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flut_app/counter/cubit/counter_cubit.dart';
import 'package:flut_app/counter/view/counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return BlocProvider(create: (_) => CounterCubit(),
    child: CounterView(),
    );
  }
}
