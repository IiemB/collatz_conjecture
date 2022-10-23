import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:dartz/dartz.dart';

abstract class LicenseRepository {
  Future<Either<Failure, LicensesDataModel>> getLicensesData();
}
