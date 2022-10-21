import 'package:first_project/src/cubits/count_cubit.dart';
import 'package:first_project/src/cubits/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/di/di_graph_setup.dart';
import 'src/utils/app_routers.dart';
import 'src/utils/app_variable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependenciesGraph();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteCubit>(
      create: (context) => FavoriteCubit(),
      child: MaterialApp.router(
        routerConfig: getIt<AppRouter>().router,
      ),
    );
  }
}
