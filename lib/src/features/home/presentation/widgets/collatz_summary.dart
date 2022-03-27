import 'package:collatz_conjecture/src/features/home/presentation/widgets/negative_image.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/cubit/theme_cubit.dart';
import 'package:collatz_conjecture/src/utils/assets.gen.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollatzSummary extends StatelessWidget {
  const CollatzSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SelectableText(
                    Constanst.string.collatzSummary2,
                    textAlign: TextAlign.justify,
                    style: context.themeData.textTheme.subtitle1,
                  ),
                  const SizedBox.square(dimension: 8),
                  SelectableText(
                    Constanst.string.collatzSummary2_1,
                    textAlign: TextAlign.justify,
                    style: context.themeData.textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: context.height / 6),
              child: BlocBuilder<ThemeCubit, int>(
                builder: (context, state) {
                  return Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: NegativeImage(
                      isNegative: state != 0,
                      child: Image(
                        image: Assets.images.collatzFormula,
                        fit: BoxFit.contain,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox.square(dimension: kToolbarHeight * 3 / 2),
        ],
      ),
    );
  }
}
