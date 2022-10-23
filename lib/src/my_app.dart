import 'package:collatz_conjecture/src/features/theme/theme.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:collatz_conjecture/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, int>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(412, 846),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, _) => MaterialApp(
              navigatorKey: getIt<Routes>().navigatorKey,
              title: Constanst.string.appTitle,
              theme: Themes.getTheme(state).modified,
              onGenerateRoute: getIt<Routes>().onGenerateRoute,
            ),
          );
        },
      ),
    );
  }
}
