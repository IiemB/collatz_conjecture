import 'package:collatz_conjecture/src/features/theme/presentation/cubit/theme_cubit.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchThemeButton extends StatelessWidget {
  const SwitchThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Change theme',
      child: SizedBox(
        height: kToolbarHeight,
        width: kToolbarHeight,
        child: Container(
          height: kToolbarHeight,
          width: kToolbarHeight,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: context.themeData.textTheme.headline4?.color ??
                  context.themeData.colorScheme.primary,
              width: 3,
            ),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(kToolbarHeight / 2),
            onTap: () => BlocProvider.of<ThemeCubit>(context).changeTheme(),
            child: BlocBuilder<ThemeCubit, int>(
              builder: (context, state) => state != 0
                  ? state == 1
                      ? Icon(
                          Icons.dark_mode,
                          color: context.themeData.textTheme.headline4?.color,
                        )
                      : Icon(
                          Icons.light_mode_outlined,
                          color: context.themeData.textTheme.headline4?.color,
                        )
                  : Icon(
                      Icons.dark_mode_outlined,
                      color: context.themeData.textTheme.headline4?.color,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
