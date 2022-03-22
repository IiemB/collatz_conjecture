import 'package:collatz_conjecture/src/features/theme/presentation/cubit/theme_cubit.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchThemeButton extends StatelessWidget {
  const SwitchThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.themeData.colorScheme.primary,
      ),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return IconButton(
            tooltip: 'Change theme mode',
            icon: state == ThemeMode.dark
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
            onPressed: () => BlocProvider.of<ThemeCubit>(context).changeTheme(),
          );
        },
      ),
    );
  }
}
