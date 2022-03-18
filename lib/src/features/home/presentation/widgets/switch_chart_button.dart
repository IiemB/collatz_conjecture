import 'package:collatz_conjecture/src/features/home/presentation/cubit/chart_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchChartButton extends StatelessWidget {
  const SwitchChartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
      builder: (context, state) => state is! CollatzNumberStateInitial
          ? Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.themeData.colorScheme.primary,
              ),
              child: BlocBuilder<ChartCubit, ChartState>(
                builder: (context, state) {
                  return IconButton(
                    tooltip: state == ChartState.lineChart
                        ? 'Show distribution'
                        : 'Show line chart',
                    icon: state == ChartState.lineChart
                        ? const Icon(Icons.pie_chart)
                        : const Icon(Icons.show_chart),
                    onPressed: () =>
                        BlocProvider.of<ChartCubit>(context).changeState(),
                  );
                },
              ),
            )
          : const SizedBox(),
    );
  }
}
