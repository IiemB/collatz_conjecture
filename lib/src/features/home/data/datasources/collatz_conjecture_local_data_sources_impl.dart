import 'dart:async';

import 'package:collatz_conjecture/src/features/home/home.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CollatzConjectureLocalDataSources)
class CollatzConjectureLocalDataSourcesImpl
    implements CollatzConjectureLocalDataSources {
  @override
  Future<ResultDataModel> procesNumber({required int initial}) async {
    try {
      final completer = Completer();

      final data = List<ChartData>.empty(growable: true);
      int value = initial < 0 ? initial * -1 : initial;
      int index = 0;

      data.add(ChartData(index, value));

      await Future.microtask(() {
        do {
          index++;
          if (value.isEven) {
            value = _processEvenNumber(value);
            data.add(ChartData(index, value));
          } else {
            value = _processOddNumber(value);
            data.add(ChartData(index, value));
          }
        } while (value != 1);
      }).whenComplete(() => completer.complete());

      final data2 = List<ChartData>.from(data);

      if (completer.isCompleted) {
        data2.removeAt(0);

        final initialNumber = data.first.y;
        final totalOddSteps = data2.where((element) => element.y.isOdd).length;
        final totalSteps = data.length - 1;
        final totalEvenSteps =
            data2.where((element) => element.y.isEven).length;
        final highestNumber = data
            .map((e) => e.y)
            .reduce((curr, next) => curr > next ? curr : next);
        final highestNumberAt =
            data.indexWhere((element) => element.y >= highestNumber);
        final highestPerInitial = highestNumber / initialNumber;

        final oddDistribution =
            (totalOddSteps / (totalEvenSteps + totalOddSteps)) * 100;
        final evenDistribution =
            (totalEvenSteps / (totalEvenSteps + totalOddSteps)) * 100;

        final resultData = ResultDataModel(
          initialNumber: initialNumber,
          data: data,
          totalSteps: totalSteps,
          totalOddNumber: totalOddSteps,
          totalEvenNumber: totalEvenSteps,
          highestNumber: highestNumber,
          highestNumberAt: highestNumberAt,
          highestPerInitial: highestPerInitial,
          oddDistribution: oddDistribution,
          evenDistribution: evenDistribution,
        );

        return resultData;
      } else {
        throw Exception('$completer failure');
      }
    } catch (e) {
      rethrow;
    }
  }

  int _processEvenNumber(int number) {
    return (number / 2).floor();
  }

  int _processOddNumber(int number) {
    return (3 * number) + 1;
  }
}
