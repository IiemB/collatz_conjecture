import 'package:collatz_conjecture/src/features/home/home.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:dartz/dartz.dart';

abstract class CollatzConjectureRepository {
  Future<Either<Failure, ResultDataModel>> processNumber({
    required int initial,
  });
}
