import 'package:collatz_conjecture/src/configs/themes.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/cubit/theme_cubit.dart';
import 'package:collatz_conjecture/src/features/welcome/presentation/pages/welcome_page.dart';
import 'package:collatz_conjecture/src/services/injector/injector.dart';
import 'package:collatz_conjecture/src/services/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ThemeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Collatz Conjecture',
            theme: Themes.lightTheme,
            darkTheme: Themes.amoledDarkTheme,
            themeMode: state,
            initialRoute: WelcomePage.routeName,
            onGenerateRoute: getIt<Routes>().onGenerateRoute,
          );
        },
      ),
    );
  }
}
