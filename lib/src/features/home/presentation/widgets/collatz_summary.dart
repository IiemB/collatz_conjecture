import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

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
                    style: context.theme.textTheme.subtitle1,
                  ),
                  const SizedBox.square(dimension: 8),
                  SelectableText(
                    Constanst.string.collatzSummary2_1,
                    textAlign: TextAlign.justify,
                    style: context.theme.textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  alignment: Alignment.center,
                  child: Math.tex(
                    Constanst.other.collatzFormula,
                    mathStyle: MathStyle.text,
                    textStyle: context.theme.textTheme.titleLarge,
                  ),
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
