import 'package:flutter_bloc/flutter_bloc.dart';

class CountCubit extends Cubit<int> {
  CountCubit() : super(0);

  increment() {
    emit(state + 1);
  }

  decrement() {
    emit(state - 1);
  }
}
