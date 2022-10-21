import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/config/routes/app_routers.dart';
import 'src/features/favorite/cubit/favorite_cubit.dart';
import 'src/utils/app_variable.dart';

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
