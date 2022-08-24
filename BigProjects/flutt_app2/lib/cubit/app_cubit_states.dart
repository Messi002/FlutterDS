

import 'package:equatable/equatable.dart';

abstract class CubitState extends Equatable{
}

class InitialState extends CubitState{
  @override
  List<Object> get props => [];

}

class WelcomeState extends CubitState{
  @override
  List<Object> get props => [];

}

class LoadingState extends CubitState{
  @override
  List<Object> get props => [];

}

class LoadedState extends CubitState{
  @override
  List<Object> get props => [];

}