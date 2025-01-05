import 'package:ev_app/core/router/app_routes.dart';
import 'package:ev_app/shared/landing/presentation/landing_screen.dart';
import 'package:go_router/go_router.dart';

class AppPages {
  AppPages._();

  static final GoRouter routes =
      GoRouter(initialLocation: Paths.landingScreen, routes: [
        GoRoute(
          name: Paths.landingScreen,
          path: Paths.landingScreen,
          builder: (context, state) => const LandingScreen()
        )
      ]);
}
