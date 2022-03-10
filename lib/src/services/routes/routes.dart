import 'package:collatz_conjecture/src/features/home/presentation/pages/home_page.dart';
import 'package:collatz_conjecture/src/features/welcome/presentation/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class Routes {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) {
        switch (routeSettings.name) {
          // case SplashPage.routeName:
          //   return const SplashPage();
          // case SignPage.routeName:
          //   return const SignPage();
          case HomePage.routeName:
            return const HomePage();
          default:
            return const WelcomePage();
        }
      },
    );
  }
}
