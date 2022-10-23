import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LicenseLocalDatasources)
class LicenseLocalDatasourceImpl implements LicenseLocalDatasources {
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
