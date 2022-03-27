import 'package:collatz_conjecture/src/features/about/presentation/pages/about_page.dart';
import 'package:collatz_conjecture/src/features/home/presentation/pages/home_page.dart';
import 'package:collatz_conjecture/src/features/license/presentation/pages/app_license_page.dart';
import 'package:collatz_conjecture/src/features/license/presentation/pages/license_detail_page.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class Routes {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_) => _getPage(routeSettings),
    );
  }

  Widget _getPage(RouteSettings routeSettings) {
    try {
      switch (routeSettings.name) {
        case HomePage.routeName:
          return const HomePage();
        case AppLicensesPage.routeName:
          return const AppLicensesPage();
        case AboutPage.routeName:
          return const AboutPage();
        case LicenseDetailsPage.routeName:
          final args = routeSettings.arguments as Map<String, dynamic>;

          return LicenseDetailsPage(
            packageName: args['packageName'] as PackageName,
            licenseEntries: args['licenseEntries'] as LicenseEntries,
          );

        default:
          return _ErrorPage(
            message: 'No route defined for ${routeSettings.name}',
          );
      }
    } on Error catch (e) {
      return _ErrorPage(message: e);
    } on Exception catch (e) {
      return _ErrorPage(message: e);
    }
  }
}

class _ErrorPage extends StatelessWidget {
  final dynamic message;
  const _ErrorPage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: context.width / 1.5,
          child: Text(
            'Error\n\n$message',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
