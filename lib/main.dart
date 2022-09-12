import 'package:collatz_conjecture/src/app.dart';
import 'package:collatz_conjecture/src/configs/configs.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjector(env: Env.developement);

  getIt<SharedPrefsInterface>().init();

  FlutterNativeSplash.remove();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).whenComplete(() => runApp(const MyApp()));
}
