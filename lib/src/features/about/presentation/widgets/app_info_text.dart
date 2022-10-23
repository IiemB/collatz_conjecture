import 'package:collatz_conjecture/src/features/about/about.dart';
import 'package:collatz_conjecture/src/shared/shared.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppInfoText extends StatelessWidget {
  const AppInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kToolbarHeight / 4,
      ),
      child: Column(
        children: [
          BaseShimmer(
            baseColor: context.theme.textTheme.headline4?.color,
            child: Text(
              Constanst.string.appTitle,
              style: context.theme.textTheme.headline4,
            ),
          ),
          const SizedBox.square(dimension: 8),
          BlocBuilder<AboutCubit, AboutState>(
            bloc: BlocProvider.of<AboutCubit>(context)..getAppInfo(),
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const SizedBox(),
                loading: (v) => BaseShimmer(
                  child: Card(
                    margin: EdgeInsets.zero,
                    child: Text(
                      'Version 0.0.0',
                      style: context.theme.textTheme.headline6,
                    ),
                  ),
                ),
                infoLoaded: (v) => BaseShimmer(
                  baseColor: context.theme.textTheme.headline4?.color,
                  child: Text(
                    'Version ${v.packageInfo.version}',
                    style: context.theme.textTheme.headline6,
                  ),
                ),
              );
            },
          ),
          const SizedBox.square(dimension: 8),
          BaseShimmer(
            baseColor: context.theme.textTheme.headline4?.color,
            child: const Text('Powered by Flutter'),
          ),
        ],
      ),
    );
  }
}
