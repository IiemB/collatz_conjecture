import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LicenseRepository)
class LicenseRepositoryImpl implements LicenseRepository {
  final LicenseDataSource _licenseDataSource;

  LicenseRepositoryImpl(this._licenseDataSource);
  @override
  Future<Either<Failure, LicensesDataModel>> getLicensesData() async {
    try {
      final result = await _licenseDataSource.getAppLicenses();
      return right(result);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
