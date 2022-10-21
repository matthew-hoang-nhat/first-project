import 'package:bloc/bloc.dart';

enum AppStatus {
  authenticated,
}

class AppBloc extends Bloc<AppStatus, int> {
  AppBloc() : super(0) {
    // onAppStatus();
  }

  // onAppStatus() {
  //   on<AppStatus>(
  //     (event, emit) async {
  //       emit(MyState(results: results));
  //     },
  //     transformer: droppable(),
  //   );
  // }
}
