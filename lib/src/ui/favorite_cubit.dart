import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<Set<String>> {
  FavoriteCubit() : super(<String>{});

  addFavorite(String value) {
    state.add(value);
    emit(state);
  }

  removeFavorite(String value) {
    state.remove(value);
    emit(state);
  }
}
