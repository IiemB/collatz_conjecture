import 'package:collatz_conjecture/src/features/license/data/models/license_data_model/licenses_data_model.dart';

abstract class LicenseDataSource {
  Future<LicensesDataModel> getAppLicenses();
}
