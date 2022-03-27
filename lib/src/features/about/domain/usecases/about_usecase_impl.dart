import 'package:collatz_conjecture/src/features/about/domain/usecases/about_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@LazySingleton(as: AboutUsecase)
class AboutUsecaseImpl implements AboutUsecase {
  @override
  Future<PackageInfo> getAppInfoFromPlatform() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();

      return packageInfo;
    } on Exception {
      rethrow;
    }
  }
}
