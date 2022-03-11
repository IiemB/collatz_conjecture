import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartResult extends StatefulWidget {
  const ChartResult({Key? key}) : super(key: key);

  @override
  State<ChartResult> createState() => _ChartResultState();
}

class _ChartResultState extends State<ChartResult> {
  TrackballBehavior? _trackballBehavior;

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      lineType: TrackballLineType.vertical,
      tooltipSettings: const InteractiveTooltip(format: 'point.x : point.y'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'Result'),
      primaryXAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
      ),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
      ),
      series: _getMultiColoredLineSeries(),
      trackballBehavior: _trackballBehavior,
    );
  }

  ///Get multi colored line series
  List<LineSeries<ChartDataModel, int>> _getMultiColoredLineSeries() {
    return <LineSeries<ChartDataModel, int>>[
      LineSeries<ChartDataModel, int>(
        animationDuration: 2500,
        xValueMapper: (ChartDataModel data, _) => data.x,
        yValueMapper: (ChartDataModel data, _) => data.y,
        pointColorMapper: (ChartDataModel data, _) => data.color,
        width: 2,
        dataSource: List<ChartDataModel>.generate(
          400,
          (index) => ChartDataModel(index, index),
        ),
      )
    ];
  }
}
