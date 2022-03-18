import 'package:collatz_conjecture/src/features/home/presentation/cubit/chart_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/chart_result.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/collatz_summary.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/fa_button.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/line_chart.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/pie_chart.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/switch_chart_button.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/widgets/switch_theme_button.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Collatz Conjecture',
          style: TextStyle(color: context.themeData.colorScheme.primary),
        ),
        actions: const [SwitchChartButton(), SwitchThemeButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocConsumer<CollatzNumberCubit, CollatzNumberState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              error: (v) => context.showSnackBar(
                v.failure.message ?? v.failure.toString(),
              ),
            );
          },
          buildWhen: (previous, current) =>
              current is CollatzNumberStateLoading ||
              current is CollatzNumberStateSuccess ||
              current is CollatzNumberStateInitial,
          builder: (context, state) => state.maybeMap(
            initial: (v) => const CollatzSummary(),
            orElse: () => ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                BlocBuilder<ChartCubit, ChartState>(
                  builder: (context, state) {
                    switch (state) {
                      case ChartState.lineChart:
                        return const LineChartBuilder();
                      case ChartState.pieChart:
                        return const PieChartBuilder();
                    }
                  },
                ),
                const ChartResultBuilder(),
                SizedBox.square(dimension: context.height / 14),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const FAButton(),
    );
  }
}
