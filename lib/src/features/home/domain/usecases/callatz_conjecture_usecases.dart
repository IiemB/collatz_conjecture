import 'package:collatz_conjecture/src/features/home/home.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:dartz/dartz.dart';

final _repositories = getIt<CollatzConjectureRepository>();

class CollatzConjectureLocalUsecases {
  const CollatzConjectureLocalUsecases();

  static const processNumber = $ProcessNumber();
}

class $ProcessNumber {
  const $ProcessNumber();

  Future<Either<Failure, ResultDataModel>> call({required int initial}) =>
      _repositories.processNumber(initial: initial);
}
