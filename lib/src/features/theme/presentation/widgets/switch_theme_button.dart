import 'package:collatz_conjecture/src/features/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchThemeButton extends StatelessWidget {
  const SwitchThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Change theme',
      onPressed: () => BlocProvider.of<ThemeCubit>(context).changeTheme(),
      icon: BlocBuilder<ThemeCubit, int>(
        builder: (context, state) => Icon(
          state != 0
              ? state == 1
                  ? Icons.dark_mode
                  : Icons.light_mode_outlined
              : Icons.dark_mode_outlined,
        ),
      ),
    );
  }
}
