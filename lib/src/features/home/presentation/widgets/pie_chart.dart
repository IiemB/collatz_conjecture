import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/shared/widgets/base_shimmer.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartBuilder extends StatelessWidget {
  const PieChartBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
        buildWhen: (previous, current) =>
            current is CollatzNumberStateLoading ||
            current is CollatzNumberStateSuccess ||
            current is CollatzNumberStateInitial,
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox(),
            initial: (v) => const SizedBox(),
            succees: (v) => _PieChart(
              evenDistribution: v.result.evenDistribution,
              oddDistribution: v.result.oddDistribution,
            ),
            loading: (v) => BaseShimmer(
              child: Card(
                child: SizedBox(
                  height: context.height / 1.5,
                  width: context.width,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _PieChart extends StatelessWidget {
  final double oddDistribution;
  final double evenDistribution;

  const _PieChart({
    Key? key,
    required this.oddDistribution,
    required this.evenDistribution,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: context.height / 1.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfCircularChart(
            title: ChartTitle(text: 'Distribution of Odd and Even steps'),
            series: <PieSeries<Map<String, dynamic>, String>>[
              PieSeries<Map<String, dynamic>, String>(
                dataSource: <Map<String, dynamic>>[
                  {
                    'set': 'Odd',
                    'value': oddDistribution,
                  },
                  {
                    'set': 'Even',
                    'value': evenDistribution,
                  },
                ],
                xValueMapper: (data, _) => data['set'] as String,
                yValueMapper: (data, _) => data['value'] as num,
                dataLabelMapper: (data, _) =>
                    '${data['set']} \n ${data['value'].toString().length >= 5 ? data['value'].toString().substring(0, 5) : data['value']} %',
                startAngle: 90,
                endAngle: 90,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
