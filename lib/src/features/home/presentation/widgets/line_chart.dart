import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data.dart';
import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartBuilder extends StatelessWidget {
  const LineChartBuilder({Key? key}) : super(key: key);

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
            succees: (v) => _LineChart(chartData: v.result.data),
            loading: (v) => Shimmer.fromColors(
              baseColor: context.themeData.cardColor,
              highlightColor: context.themeData.colorScheme.primary,
              enabled: true,
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

class _LineChart extends StatelessWidget {
  final List<ChartData> chartData;
  const _LineChart({Key? key, required this.chartData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: context.height / 1.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfCartesianChart(
            title: ChartTitle(text: 'Result'),
            plotAreaBorderWidth: 0,
            primaryXAxis: NumericAxis(
              axisLine: const AxisLine(width: 0),
              majorTickLines: const MajorTickLines(size: 0),
            ),
            primaryYAxis: NumericAxis(
              axisLine: const AxisLine(width: 0),
              majorTickLines: const MajorTickLines(size: 0),
              minimum: 1,
            ),
            series: <LineSeries<ChartData, int>>[
              LineSeries<ChartData, int>(
                animationDuration: 5000,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                pointColorMapper: (ChartData data, _) => data.color,
                width: 2,
                dataSource: chartData,
              )
            ],
            trackballBehavior: TrackballBehavior(
              enable: true,
              activationMode: ActivationMode.singleTap,
              lineType: TrackballLineType.horizontal,
              tooltipSettings:
                  const InteractiveTooltip(format: 'Step point.x\npoint.y'),
            ),
            zoomPanBehavior: ZoomPanBehavior(
              enablePinching: true,
              enablePanning: true,
            ),
          ),
        ),
      ),
    );
  }
}
