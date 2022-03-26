import 'dart:async';

import 'package:collatz_conjecture/src/features/home/data/models/result_data_model.dart';
import 'package:collatz_conjecture/src/features/home/domain/repositories/collatz_conjecture_repository.dart';
import 'package:collatz_conjecture/src/features/home/domain/usecases/collatz_conjecture_usecase.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CollatzConjectureRepository)
class CollatzConjectureRepositoryImpl implements CollatzConjectureRepository {
  final CollatzConjectureUsecase _collatzConjectureUsecase;

  CollatzConjectureRepositoryImpl(this._collatzConjectureUsecase);

  @override
  Future<Either<Failure, ResultDataModel>> processNumber({
    required int initial,
  }) async {
    try {
      final _resultData =
          await _collatzConjectureUsecase.procesNumber(initial: initial);

      return right(_resultData);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
