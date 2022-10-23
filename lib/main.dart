import 'package:collatz_conjecture/src/app.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjector(env: Environment.dev);

  getIt<SharedPrefsInterface>().init();

  FlutterNativeSplash.remove();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).whenComplete(() => runApp(const MyApp()));
}
