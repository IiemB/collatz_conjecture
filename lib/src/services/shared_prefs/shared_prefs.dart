import 'package:collatz_conjecture/src/services/injector/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefsInterface {
  SharedPreferences get prefs;

  Future<void> init();
}

@Singleton(as: SharedPrefsInterface)
class SharedPrefs implements SharedPrefsInterface {
  SharedPreferences? _prefs;

  @override
  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  @override
  SharedPreferences get prefs => _prefs!;
}

final sharedPrefs = getIt<SharedPrefsInterface>().prefs;
