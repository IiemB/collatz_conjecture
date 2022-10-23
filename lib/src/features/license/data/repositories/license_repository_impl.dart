import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LicenseRepository)
class LicenseRepositoryImpl implements LicenseRepository {
  final LicenseLocalDatasources _licenseLocalDatasources;

  LicenseRepositoryImpl(this._licenseLocalDatasources);
  @override
  Future<Either<Failure, LicensesDataModel>> getLicensesData() async {
    try {
      final result = await _licenseLocalDatasources.getAppLicenses();
      return right(result);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
