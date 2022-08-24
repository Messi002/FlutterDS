import 'package:flut_app/Pages/welcome_page.dart';
import 'package:flut_app/cubit/app_cubit_states.dart';
import 'package:flut_app/cubit/app_cubits.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, CubitState>(builder: (context, state) {
        if (state is WelcomeState) {
          return Welcome();
        } if (state is LoadingState) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Container();
        }
      }),
    );
  }
}
