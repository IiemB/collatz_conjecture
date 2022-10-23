import 'package:package_info_plus/package_info_plus.dart';

abstract class AboutLocalDatasources {
  Future<PackageInfo> getAppInfoFromPlatform();
}
