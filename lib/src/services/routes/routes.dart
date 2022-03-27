import 'package:collatz_conjecture/src/features/home/presentation/pages/home_page.dart';
import 'package:collatz_conjecture/src/features/license/presentation/pages/app_license_page.dart';
import 'package:collatz_conjecture/src/features/license/presentation/pages/license_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class Routes {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_) {
        switch (routeSettings.name) {
          case HomePage.routeName:
            return const HomePage();
          case AppLicensesPage.routeName:
            return const AppLicensesPage();
          case LicenseDetailsPage.routeName:
            final args = routeSettings.arguments as Map<String, dynamic>;
            return LicenseDetailsPage(
              packageName: args['packageName'] as PackageName,
              licenseEntries: args['licenseEntries'] as LicenseEntries,
            );
          default:
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${routeSettings.name}'),
              ),
            );
        }
      },
    );
  }
}
