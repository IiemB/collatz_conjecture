import 'package:collatz_conjecture/src/app.dart';
import 'package:collatz_conjecture/src/configs/env.dart';
import 'package:collatz_conjecture/src/services/dev_logger/dev_logger.dart';
import 'package:collatz_conjecture/src/services/injector/injector.dart';
import 'package:collatz_conjecture/src/services/shared_prefs/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjector(env: Env.developement);

  getIt<SharedPrefsInterface>().init();

  FlutterNativeSplash.remove();

  devLogger.i('Starting App');
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).whenComplete(() => runApp(const MyApp()));
}
