import 'package:rxdart/rxdart.dart';

class BaseCubit<State> {
  late BehaviorSubject<State> _state;
  Stream<State> get stateStream => _state.stream;

  BaseCubit({required State initialState}) {
    _state = BehaviorSubject.seeded(initialState);
  }

  void emit(State newState) {
    if (newState != _state.value) {
      _state.value = newState;
    }
  }

  void close() {
    _state.close();
  }
}
