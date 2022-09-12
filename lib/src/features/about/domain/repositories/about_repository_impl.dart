import 'package:collatz_conjecture/src/features/about/about.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutUsecase _aboutUsecase;

  AboutRepositoryImpl(this._aboutUsecase);

  @override
  Future<Either<Failure, PackageInfo>> getAppInfo() async {
    try {
      final result = await _aboutUsecase.getAppInfoFromPlatform();

      return right(result);
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
