import 'package:collatz_conjecture/src/features/home/data/models/result_data_model.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class CollatzConjectureRepositories {
  Future<Either<Failure, ResultDataModel>> processNumber({
    required int number,
  });
}
