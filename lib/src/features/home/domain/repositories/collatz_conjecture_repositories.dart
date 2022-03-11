import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data_model.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class CollatzConjectureRepositories {
  Future<Either<Failure, List<ChartDataModel>>> processNumber({
    required int number,
  });
}
