import 'package:collatz_conjecture/src/my_app.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: binding);

  initInjector(env: Environment.dev);

  await getIt<SharedPrefsInterface>().init();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).whenComplete(() => runApp(const MyApp()));

  Future.delayed(
    const Duration(milliseconds: 1000),
    () => FlutterNativeSplash.remove(),
  );
}
