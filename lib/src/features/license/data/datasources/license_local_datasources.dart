import 'package:collatz_conjecture/src/features/license/license.dart';

abstract class LicenseLocalDatasources {
  Future<LicensesDataModel> getAppLicenses();
}
