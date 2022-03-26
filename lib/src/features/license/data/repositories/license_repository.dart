import 'package:collatz_conjecture/src/features/license/data/models/license_data_model/licenses_data_model.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class LicenseRepository {
  Future<Either<Failure, LicensesDataModel>> getLicensesData();
}
