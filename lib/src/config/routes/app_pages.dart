import 'package:go_router/go_router.dart';

import '../../features/favorite/screens/favorite_screen.dart';
import '../../features/favorite/screens/home_screen.dart';

class AppPages {
  static const String home = _Paths.home;
  static const String favorite = _Paths.favorite;

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
  ];
}

abstract class _Paths {
  static const String home = "/";
  static const String favorite = "/favorite";
}
