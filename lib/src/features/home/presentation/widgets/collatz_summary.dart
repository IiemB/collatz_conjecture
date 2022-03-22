import 'package:collatz_conjecture/src/features/home/presentation/widgets/negative_image.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/cubit/theme_cubit.dart';
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
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  Constanst.text1,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: SizedBox(
                width: context.width,
                height: context.height / 8,
                child: BlocBuilder<ThemeCubit, ThemeMode>(
                  builder: (context, state) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        // color: state == ThemeMode.dark
                        //     ? const Color(0xff131617)
                        //     : const Color(0xfff7fbfd),
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: NegativeImage(
                        isNegative: state == ThemeMode.dark,
                        child: Image.asset(
                          Constanst.collatzFormulaImgAssest,
                          fit: BoxFit.contain,
                        ),
                        // child: Image.network(
                        //   Constanst.collatzFormulaImgNetwork,
                        //   fit: BoxFit.contain,
                        //   errorBuilder: (context, _, __) => Image.asset(
                        //     Constanst.collatzFormulaImgNetwork,
                        //     fit: BoxFit.contain,
                        //   ),
                        // ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox.square(dimension: kToolbarHeight * 3 / 2),
        ],
      ),
    );
  }
}
