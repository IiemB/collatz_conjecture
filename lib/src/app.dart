import 'package:collatz_conjecture/src/features/welcome/presentation/pages/welcome_page.dart';
import 'package:collatz_conjecture/src/services/injector/injector.dart';
import 'package:collatz_conjecture/src/services/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collatz Conjecture',
      initialRoute: WelcomePage.routeName,
      onGenerateRoute: getIt<Routes>().onGenerateRoute,
    );
  }
}
