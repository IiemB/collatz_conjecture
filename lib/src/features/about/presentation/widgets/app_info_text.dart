import 'package:collatz_conjecture/src/features/about/presentation/cubit/about_cubit.dart';
import 'package:collatz_conjecture/src/shared/widgets/base_shimmer.dart';
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
            baseColor: context.themeData.textTheme.headline4?.color,
            child: Text(
              Constanst.string.appTitle,
              style: context.themeData.textTheme.headline4,
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
                      style: context.themeData.textTheme.headline6,
                    ),
                  ),
                ),
                infoLoaded: (v) => BaseShimmer(
                  baseColor: context.themeData.textTheme.headline4?.color,
                  child: Text(
                    'Version ${v.packageInfo.version}',
                    style: context.themeData.textTheme.headline6,
                  ),
                ),
              );
            },
          ),
          const SizedBox.square(dimension: 8),
          BaseShimmer(
            baseColor: context.themeData.textTheme.headline4?.color,
            child: const Text('Powered by Flutter'),
          ),
        ],
      ),
    );
  }
}
