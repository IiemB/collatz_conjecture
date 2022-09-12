import 'dart:async';
import 'package:collatz_conjecture/src/features/home/home.dart';
import 'package:collatz_conjecture/src/services/services.dart';
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
      final resultData =
          await _collatzConjectureUsecase.procesNumber(initial: initial);

      return right(resultData);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
