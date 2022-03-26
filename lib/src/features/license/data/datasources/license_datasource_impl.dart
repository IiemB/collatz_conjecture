import 'package:collatz_conjecture/src/features/license/data/datasources/license_datasource.dart';
import 'package:collatz_conjecture/src/features/license/data/models/license_data_model/licenses_data_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LicenseDataSource)
class LicenseDataSourceImpl implements LicenseDataSource {
  @override
  Future<LicensesDataModel> getAppLicenses() async {
    try {
      final licenses = await LicenseRegistry.licenses.fold<LicensesDataModel>(
        LicensesDataModel(
          licenses: <LicenseEntry>[],
          packages: <String>[],
          packageLicenseBindings: <String, List<int>>{},
        ),
        (prev, license) => prev..addLicense(license),
      )
        ..sortPackages();

      return licenses;
    } on Exception {
      rethrow;
    }
  }
}
