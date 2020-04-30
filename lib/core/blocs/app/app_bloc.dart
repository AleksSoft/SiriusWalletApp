import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  @override
  AppState get initialState => Uninitialized();

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    }
  }

  Stream<AppState> _mapAppStartedToState() async* {
    await Future.delayed(Duration(seconds: 2));
    yield Initialized();
  }
}
