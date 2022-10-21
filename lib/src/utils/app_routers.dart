import 'package:first_project/src/utils/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../blocs/app_bloc.dart';

class AppRouter {
  const AppRouter(this._appBloc);
  final AppBloc _appBloc;

  GoRouter get router => GoRouter(
        initialLocation: AppPages.home,
        routes: AppPages.pages,
        debugLogDiagnostics: true,
        // observers: [],
        // refreshListenable: GoRouterRefreshStream(_appBloc.stream),
        redirect: (context, state) => _redirect(context, state),
      );

  _redirect(BuildContext context, GoRouterState state) {
    // final isLoggedIn = getIt.get<AppShared>().getLoginValue();
    // if (AppPages.needAuthenticatedPages.contains(state.location) &&
    //     isLoggedIn == false) {
    //   return AppPages.login;
    // }
    return null;
  }
}
