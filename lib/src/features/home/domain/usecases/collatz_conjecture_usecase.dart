import 'dart:async';

import 'package:collatz_conjecture/src/features/home/data/models/result_data_model.dart';
import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data.dart';
import 'package:collatz_conjecture/src/features/home/domain/repositories/collatz_conjecture_repositories.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CollatzConjectureRepositories)
class CollatzConjectureUsecase implements CollatzConjectureRepositories {
  @override
  Future<Either<Failure, ResultDataModel>> processNumber({
    required int number,
  }) async {
    try {
      final _completer = Completer();

      final _data = List<ChartData>.empty(growable: true);
      int value = number < 0 ? number * -1 : number;
      int index = 0;

      _data.add(ChartData(index, value));

      await Future.microtask(() {
        do {
          index++;
          if (value.isEven) {
            value = _processEvenNumber(value);
            _data.add(ChartData(index, value));
          } else {
            value = _processOddNumber(value);
            _data.add(ChartData(index, value));
          }
        } while (value != 1);
      }).whenComplete(() => _completer.complete());

      final _data2 = List<ChartData>.from(_data);

      if (_completer.isCompleted) {
        _data2.removeAt(0);

        final _initialNumber = _data.first.y;
        final _totalOddSteps =
            _data2.where((element) => element.y.isOdd).length;
        final _totalSteps = _data.length - 1;
        final _totalEvenSteps =
            _data2.where((element) => element.y.isEven).length;
        final _highestNumber = _data
            .map((e) => e.y)
            .reduce((curr, next) => curr > next ? curr : next);
        final _highestNumberAt =
            _data.indexWhere((element) => element.y >= _highestNumber);
        final _highestPerInitial = _highestNumber / _initialNumber;

        final _oddDistribution =
            (_totalOddSteps / (_totalEvenSteps + _totalOddSteps)) * 100;
        final _evenDistribution =
            (_totalEvenSteps / (_totalEvenSteps + _totalOddSteps)) * 100;

        return right(
          ResultDataModel(
            initialNumber: _initialNumber,
            data: _data,
            totalSteps: _totalSteps,
            totalOddNumber: _totalOddSteps,
            totalEvenNumber: _totalEvenSteps,
            highestNumber: _highestNumber,
            highestNumberAt: _highestNumberAt,
            highestPerInitial: _highestPerInitial,
            oddDistribution: _oddDistribution,
            evenDistribution: _evenDistribution,
          ),
        );
      } else {
        return left(Failure('$_completer failure'));
      }
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  int _processEvenNumber(int number) {
    return (number / 2).floor();
  }

  int _processOddNumber(int number) {
    return (3 * number) + 1;
  }
}
