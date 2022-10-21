import 'package:first_project/src/features/favorite/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final _biggerFont = const TextStyle(fontSize: 18);
  late final FavoriteCubit cubit;
  late final Set saved;
  late final Map<String, bool> store;

  @override
  void initState() {
    super.initState();
    setUpData();
  }

  setUpData() {
    store = {};
    cubit = BlocProvider.of<FavoriteCubit>(context);
    saved = cubit.state;
    for (var item in saved) {
      store[item] = true;
    }
  }

  @override
  Widget build(BuildContext appContext) {
    List<ListTile> tiles = cubit.state.map(
      (value) {
        return ListTile(
          title: Text(
            value,
            style: _biggerFont,
          ),
          trailing: Icon(
            (store[value] ?? false) ? Icons.favorite : Icons.favorite_border,
            color: (store[value] ?? false) ? Colors.red : null,
            semanticLabel:
                (store[value] ?? false) ? 'Remove from saved' : 'Save',
          ),
          onTap: () {
            if (store[value] == true) {
              cubit.removeFavorite(value);
              store[value] = false;
            } else {
              cubit.addFavorite(value);
              store[value] = true;
            }

            setState(() {});
          },
        );
      },
    ).toList();

    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList()
        : <Widget>[];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Saved Suggestions'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  print(cubit.state);
                },
                child: const Text('bloc.state')),
          ],
        ),
        body: BlocBuilder<FavoriteCubit, Set<String>>(
          bloc: cubit,
          builder: (BuildContext context, state) {
            return ListView(
              children: divided,
            );
          },
        ));
  }

  endScreen() {}

  @override
  void dispose() {
    super.dispose();
  }
}
