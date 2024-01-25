import 'package:bloc/bloc.dart';

class IncrementEvent extends Cubit<int> {
  IncrementEvent() : super(0);
  void increment() => emit(state + 1);
}

// Event untuk pengurangan
class DecrementEvent extends Cubit<int> {
  DecrementEvent() : super(0);

  void decrement() => emit(state - 1);
}
