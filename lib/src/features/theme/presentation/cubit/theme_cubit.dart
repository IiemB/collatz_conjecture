import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/configs/constants.dart';
import 'package:collatz_conjecture/src/services/dev_logger/dev_logger.dart';
import 'package:collatz_conjecture/src/services/shared_prefs/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit()
      : super(
          sharedPrefs.getBool(SharedPrefsKey.themeMode) ?? false
              ? ThemeMode.dark
              : ThemeMode.light,
        );

  void changeTheme() async {
    try {
      if (state == ThemeMode.dark) {
        await sharedPrefs.setBool(SharedPrefsKey.themeMode, false);
        emit(ThemeMode.light);
      } else {
        await sharedPrefs.setBool(SharedPrefsKey.themeMode, true);
        emit(ThemeMode.dark);
      }
    } on Exception catch (e) {
      devLogger.w(e);
    }
  }
}
