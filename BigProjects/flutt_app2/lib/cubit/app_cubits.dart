import 'package:flut_app/cubit/app_cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit() : super(InitialState()) {
    emit(WelcomeState());
  }

  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
