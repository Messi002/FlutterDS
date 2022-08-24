import 'package:flut_app/cubit/app_cubit_states.dart';
import 'package:flut_app/services/data_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
