import 'package:first_project/src/ui/home_screen.dart';
import 'package:first_project/src/ui/next_test_screen.dart';
import 'package:first_project/src/ui/test_screen.dart';
import 'package:go_router/go_router.dart';

import '../ui/favorite_screen.dart';

class AppPages {
  // static const String splash = _Paths.splash;
  static const String home = _Paths.home;
  static const String favorite = _Paths.favorite;
  static const String testScreen = _Paths.testScreen;
  static const String nextTestScreen = _Paths.nextTestScreen;
  // static const String login = _Paths.login;
  // static const String profile = _Paths.profile;

  // static const String todoRoot = '/todo';

  // static String todo(String id) => '$todoRoot/$id';

  static const List<String> needAuthenticatedPages = [
    // AppPages.profile,
  ];

  static final pages = <GoRoute>[
    GoRoute(
      path: home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: favorite,
      builder: (context, state) => const FavoriteScreen(),
    ),
    GoRoute(
      path: testScreen,
      builder: (context, state) => const TestScreen(),
    ),
    GoRoute(
      path: nextTestScreen,
      builder: (context, state) => const NextTestScreen(),
    ),
    // GoRoute(
    //   path: login,
    //   builder: (context, state) => const LoginScreen(),
    // ),
    // GoRoute(
    //   path: profile,
    //   builder: (context, state) => const ProfileScreen(),
    // ),
  ];
}

abstract class _Paths {
  static const String home = "/";
  static const String favorite = "/favorite";
  static const String testScreen = "/test-screen";
  static const String nextTestScreen = "/next-test-screen";
  // static const String login = "/login";
  // static const String profile = "/profile";
  // static const String splash = "/splash";
  // static const String todo = "${AppPages.todoRoot}/:id";
}
