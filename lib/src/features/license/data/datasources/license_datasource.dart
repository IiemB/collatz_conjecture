import 'package:collatz_conjecture/src/features/license/license.dart';

abstract class LicenseDataSource {
  Future<LicensesDataModel> getAppLicenses();
}
