import 'package:collatz_conjecture/src/features/about/about.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:dartz/dartz.dart';
import 'package:package_info_plus/package_info_plus.dart';

final _repositories = getIt<AboutRepository>();

class AboutUsecases {
  const AboutUsecases();

  static const getAppInfo = $GetAppInfo();
}

class $GetAppInfo {
  const $GetAppInfo();

  Future<Either<Failure, PackageInfo>> call() => _repositories.getAppInfo();
}
