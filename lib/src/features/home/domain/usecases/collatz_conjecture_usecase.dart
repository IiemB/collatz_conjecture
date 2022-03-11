import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data_model.dart';
import 'package:collatz_conjecture/src/features/home/domain/repositories/collatz_conjecture_repositories.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CollatzConjectureRepositories)
class CollatzConjectureUsecase implements CollatzConjectureRepositories {
  @override
  Future<Either<Failure, List<ChartDataModel>>> processNumber({
    required int number,
  }) async {
    try {
      final _chartDataModelList = List<ChartDataModel>.empty(growable: true);
      int x = number;
      int y = 1;

      do {
        y++;
        if (x.isEven) {
          x = _processEvenNumber(x);
          _chartDataModelList.add(ChartDataModel(x, y));
        } else {
          x = _processOddNumber(x);
          _chartDataModelList.add(ChartDataModel(x, y));
        }
      } while (x != 1);

      return right(_chartDataModelList);
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
