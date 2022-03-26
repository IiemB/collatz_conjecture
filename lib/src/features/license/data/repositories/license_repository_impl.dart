import 'package:collatz_conjecture/src/features/license/data/datasources/license_datasource.dart';
import 'package:collatz_conjecture/src/features/license/data/models/license_data_model/licenses_data_model.dart';
import 'package:collatz_conjecture/src/features/license/data/repositories/license_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LicenseRepository)
class LicenseRepositoryImpl implements LicenseRepository {
  final LicenseDataSource _licenseDataSource;

  LicenseRepositoryImpl(this._licenseDataSource);
  @override
  Future<Either<Failure, LicensesDataModel>> getLicensesData() async {
    try {
      final _result = await _licenseDataSource.getAppLicenses();
      return right(_result);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
