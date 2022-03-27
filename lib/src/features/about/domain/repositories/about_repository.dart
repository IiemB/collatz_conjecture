import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract class AboutRepository {
  Future<Either<Failure, PackageInfo>> getAppInfo();
}
