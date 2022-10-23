import 'package:collatz_conjecture/src/features/about/about.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@LazySingleton(as: AboutLocalDatasources)
class AboutLocalDatasourcesImpl implements AboutLocalDatasources {
  @override
  Future<PackageInfo> getAppInfoFromPlatform() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();

      return packageInfo;
    } catch (e) {
      rethrow;
    }
  }
}
