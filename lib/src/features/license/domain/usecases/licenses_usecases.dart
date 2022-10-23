import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:dartz/dartz.dart';

final _repositories = getIt<LicenseRepository>();

class LicensesUsecases {
  const LicensesUsecases();

  static const getLicensesData = $GetLicensesData();
}

class $GetLicensesData {
  const $GetLicensesData();

  Future<Either<Failure, LicensesDataModel>> call() =>
      _repositories.getLicensesData();
}
