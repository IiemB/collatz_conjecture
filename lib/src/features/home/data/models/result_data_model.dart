import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_data_model.freezed.dart';

@freezed
class ResultDataModel with _$ResultDataModel {
  factory ResultDataModel({
    required int initialNumber,
    required List<ChartData> data,
    required int totalOddNumber,
    required int totalEvenNumber,
    required int highestNumber,
    required int highestNumberAt,
    required double lenghtPerSteps,
    required double oddDistribution,
    required double evenDistribution,
  }) = _ResultDataModel;
}
