import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/configs/constants.dart';
import 'package:collatz_conjecture/src/services/shared_prefs/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  bool isDarkMode = false;

  void updateIsDarkMode(BuildContext context) async {
    isDarkMode = sharedPrefs.getBool(SharedPrefsKey.themeMode) ??
        Theme.of(context).brightness == Brightness.dark;
    await sharedPrefs.setBool(SharedPrefsKey.themeMode, isDarkMode);
  }

  void changeTheme() async {
    if (isDarkMode) {
      isDarkMode = false;
      emit(ThemeMode.light);
    } else {
      isDarkMode = true;
      emit(ThemeMode.dark);
    }

    await sharedPrefs.setBool(SharedPrefsKey.themeMode, isDarkMode);
  }
}
