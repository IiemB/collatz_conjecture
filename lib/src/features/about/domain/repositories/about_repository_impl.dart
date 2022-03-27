import 'package:collatz_conjecture/src/features/about/domain/repositories/about_repository.dart';
import 'package:collatz_conjecture/src/features/about/domain/usecases/about_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';

@LazySingleton(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutUsecase _aboutUsecase;

  AboutRepositoryImpl(this._aboutUsecase);

  @override
  Future<Either<Failure, PackageInfo>> getAppInfo() async {
    try {
      final _result = await _aboutUsecase.getAppInfoFromPlatform();

      return right(_result);
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
