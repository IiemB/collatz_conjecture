import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/services/dev_logger/dev_logger.dart';
import 'package:collatz_conjecture/src/services/shared_prefs/shared_prefs.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';

class ThemeCubit extends Cubit<int> {
  ThemeCubit()
      : super(
          sharedPrefs.getInt(Constanst.sharedPrefsKey.themeMode) ?? 0,
        );

  void changeTheme() async {
    try {
      switch (state) {
        case 0:
          emit(state + 1);
          await sharedPrefs.setInt(Constanst.sharedPrefsKey.themeMode, state);
          break;
        case 1:
          emit(state + 1);
          await sharedPrefs.setInt(Constanst.sharedPrefsKey.themeMode, state);
          break;
        case 2:
          emit(0);
          await sharedPrefs.setInt(Constanst.sharedPrefsKey.themeMode, state);
          break;
        default:
          emit(0);
          await sharedPrefs.setInt(Constanst.sharedPrefsKey.themeMode, state);
      }
    } on Exception catch (e) {
      emit(0);
      devLogger.w(e);
    }
  }
}
