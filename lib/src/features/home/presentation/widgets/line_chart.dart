import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data.dart';
import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/shared/widgets/base_shimmer.dart';
import 'package:collatz_conjecture/src/services/dev_logger/dev_logger.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart' hide LabelPlacement;
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/core.dart';

class LineChartBuilder extends StatelessWidget {
  const LineChartBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
      buildWhen: (previous, current) =>
          current is CollatzNumberStateLoading ||
          current is CollatzNumberStateSuccess ||
          current is CollatzNumberStateInitial,
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          initial: (v) => const SizedBox(),
          succees: (v) => _LineChart(chartData: v.result.data),
          loading: (v) => BaseShimmer(
            child: _LineChart(
              chartData: List<ChartData>.generate(
                3,
                (index) => ChartData(index, index),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LineChart extends StatefulWidget {
  final List<ChartData> chartData;
  const _LineChart({Key? key, required this.chartData}) : super(key: key);

  @override
  State<_LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<_LineChart> {
  late RangeController _rangeController;

  @override
  void initState() {
    _rangeController = RangeController(
      start: 0.toDouble(),
      end: widget.chartData.last.x.toDouble(),
    );

    super.initState();
  }

  @override
  void dispose() {
    devLogger.i('$hashCode disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 1.5,
      child: Column(
        children: [
          Expanded(
            child: Card(
              child: SfCartesianChart(
                title: ChartTitle(text: 'Result'),
                plotAreaBorderWidth: 0,
                primaryXAxis: NumericAxis(
                  isVisible: false,
                  axisLine: const AxisLine(width: 0),
                  majorTickLines: const MajorTickLines(size: 0),
                  minimum: 0.toDouble(),
                  maximum: widget.chartData.last.x.toDouble(),
                  visibleMinimum: _rangeController.start,
                  visibleMaximum: _rangeController.end,
                  rangeController: _rangeController,
                ),
                primaryYAxis: NumericAxis(
                  axisLine: const AxisLine(width: 0),
                  majorTickLines: const MajorTickLines(size: 0),
                  minimum: 1,
                ),
                series: <SplineSeries<ChartData, int>>[
                  SplineSeries<ChartData, int>(
                    animationDuration: 5000,
                    name: 'Result',
                    splineType: SplineType.monotonic,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    pointColorMapper: (ChartData data, _) => data.color,
                    width: 2,
                    dataSource: widget.chartData,
                  )
                ],
                trackballBehavior: TrackballBehavior(
                  enable: true,
                  activationMode: ActivationMode.singleTap,
                  lineType: TrackballLineType.horizontal,
                  tooltipSettings: const InteractiveTooltip(
                    format: 'point.y\nStep point.x',
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: SfRangeSelectorTheme(
              data: SfRangeSelectorThemeData(thumbRadius: 8),
              child: Container(
                margin: const EdgeInsets.fromLTRB(8, 4, 8, 0),
                width: context.width,
                child: Center(
                  child: SfRangeSelector(
                    enableDeferredUpdate: true,
                    min: 0.toDouble(),
                    max: widget.chartData.last.x.toDouble(),
                    labelPlacement: LabelPlacement.betweenTicks,
                    controller: _rangeController,
                    dragMode: SliderDragMode.onThumb,
                    child: SizedBox(
                      height: context.height / 14,
                      child: SfCartesianChart(
                        margin: EdgeInsets.zero,
                        primaryXAxis: NumericAxis(isVisible: true),
                        primaryYAxis: NumericAxis(isVisible: false),
                        plotAreaBorderWidth: 0,
                        series: <SplineAreaSeries<ChartData, int>>[
                          SplineAreaSeries<ChartData, int>(
                            dataSource: widget.chartData,
                            borderColor: const Color.fromRGBO(0, 193, 187, 1),
                            color: const Color.fromRGBO(163, 226, 224, 1),
                            borderDrawMode: BorderDrawMode.excludeBottom,
                            borderWidth: 1,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
