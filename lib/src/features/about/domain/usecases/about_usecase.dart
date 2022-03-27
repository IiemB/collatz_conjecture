import 'package:package_info_plus/package_info_plus.dart';

abstract class AboutUsecase {
  Future<PackageInfo> getAppInfoFromPlatform();
}
