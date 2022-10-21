import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<Set<String>> {
  FavoriteCubit() : super(<String>{});

  addFavorite(String value) {
    // Set<String> sets = state;
    Set<String> sets = state.toSet();
    sets.add(value);
    emit(sets);
  }

  removeFavorite(String value) {
    // Set<String> sets = state;
    Set<String> sets = state.toSet();
    sets.remove(value);
    emit(sets);
  }
}
