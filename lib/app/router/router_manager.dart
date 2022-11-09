import 'package:go_router/go_router.dart';
import 'package:skywalker_tools/views/navigation/unit_navigation.dart';

class RouterManager {
  static const String nav = '/';
  static const String host = 'host';

  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: nav,
        builder: (ctx, state) {
          return const UnitNavigation();
        },
      )
    ],
  );
}
