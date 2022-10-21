import 'package:english_words/english_words.dart';
import 'package:first_project/src/features/favorite/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../config/routes/app_pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext appContext) {
    final bloc = BlocProvider.of<FavoriteCubit>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Startup Name Generator'),
          actions: [
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                GoRouter.of(appContext).push(AppPages.favorite);
              },
              tooltip: 'Saved Suggestions',
            ),
          ],
        ),
        body: BlocBuilder<FavoriteCubit, Set<String>>(
          bloc: bloc,
          builder: (context, state) {
            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (context, i) {
                if (i.isOdd) return const Divider();
                final index = i ~/ 2;
                if (index >= _suggestions.length) {
                  _suggestions.addAll(generateWordPairs().take(10));
                }
                final alreadySaved = _saved.contains(_suggestions[index]);
                return ListTile(
                  title: Text(
                    _suggestions[index].asPascalCase,
                    style: _biggerFont,
                  ),
                  trailing: Icon(
                    state.contains(_suggestions[index].asPascalCase)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: state.contains(_suggestions[index].asPascalCase)
                        ? Colors.red
                        : null,
                    semanticLabel:
                        state.contains(_suggestions[index].asPascalCase)
                            ? 'Remove from saved'
                            : 'Save',
                  ),
                  onTap: () {
                    if (alreadySaved) {
                      bloc.removeFavorite(_suggestions[index].asPascalCase);
                      _saved.remove(_suggestions[index]);
                    } else {
                      bloc.addFavorite(
                          _suggestions.elementAt(index).asPascalCase);
                      _saved.add(_suggestions[index]);
                    }
                    setState(() {});
                  },
                );
              },
            );
          },
        ));
  }
}
