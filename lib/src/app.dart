import 'package:collatz_conjecture/src/configs/themes.dart';
import 'package:collatz_conjecture/src/features/about/presentation/cubit/about_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/pages/home_page.dart';
import 'package:collatz_conjecture/src/features/license/presentation/cubit/license_cubit.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/cubit/theme_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/services/injector/injector.dart';
import 'package:collatz_conjecture/src/services/routes/routes.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ThemeCubit>()),
        BlocProvider(create: (context) => getIt<CollatzNumberCubit>()),
        BlocProvider(create: (context) => getIt<LicenseCubit>()),
        BlocProvider(create: (context) => getIt<AboutCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, int>(
        builder: (context, state) {
          return MaterialApp(
            navigatorKey: getIt<Routes>().navigatorKey,
            title: Constanst.string.appTitle,
            theme: Themes.getTheme(state),
            initialRoute: HomePage.routeName,
            onGenerateRoute: getIt<Routes>().onGenerateRoute,
          );
        },
      ),
    );
  }
}
