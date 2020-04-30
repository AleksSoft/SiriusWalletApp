import 'package:equatable/equatable.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class Uninitialized extends AppState {}

class Initialized extends AppState {}
