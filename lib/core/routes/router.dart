import 'package:flutter/material.dart';
import 'package:sweety_app/core/routes/app_routes.dart';
import 'package:sweety_app/views/favourites_screen/favourites_screen.dart';
import 'package:sweety_app/views/navigator/navigator_screen.dart';
import 'package:sweety_app/views/onboarding_screen/onboarding_view.dart';
import 'package:sweety_app/views/settings_screen/settings_screen.dart';
import 'package:sweety_app/views/splash_screen/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SPLASH:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.HOME:
        return MaterialPageRoute(builder: (_) => const NavigatorScreen());
      case Routes.SETTING:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.FAVOURITE:
        return MaterialPageRoute(builder: (_) => const FavouritesScreen());
      case Routes.ON_BOARDING:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
