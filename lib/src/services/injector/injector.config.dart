// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/about/domain/repositories/about_repository.dart' as _i15;
import '../../features/about/domain/repositories/about_repository_impl.dart'
    as _i16;
import '../../features/about/domain/usecases/about_usecase.dart' as _i3;
import '../../features/about/domain/usecases/about_usecase_impl.dart' as _i4;
import '../../features/about/presentation/cubit/about_cubit.dart' as _i21;
import '../../features/home/domain/repositories/collatz_conjecture_repository.dart'
    as _i17;
import '../../features/home/domain/repositories/collatz_conjecture_repository_impl.dart'
    as _i18;
import '../../features/home/domain/usecases/collatz_conjecture_usecase.dart'
    as _i5;
import '../../features/home/domain/usecases/collatz_conjecture_usecase_impl.dart'
    as _i6;
import '../../features/home/presentation/cubit/collatz_number_cubit.dart'
    as _i19;
import '../../features/license/data/datasources/license_datasource.dart' as _i8;
import '../../features/license/data/datasources/license_datasource_impl.dart'
    as _i9;
import '../../features/license/data/repositories/license_repository.dart'
    as _i10;
import '../../features/license/data/repositories/license_repository_impl.dart'
    as _i11;
import '../../features/license/presentation/cubit/license_cubit.dart' as _i20;
import '../../features/theme/presentation/cubit/theme_cubit.dart' as _i14;
import '../dev_logger/dev_logger.dart' as _i7;
import '../routes/routes.dart' as _i12;
import '../shared_prefs/shared_prefs.dart' as _i13;

const String _developement = 'developement';
const String _production = 'production';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AboutUsecase>(() => _i4.AboutUsecaseImpl());
  gh.lazySingleton<_i5.CollatzConjectureUsecase>(
      () => _i6.CollatzConjectureUsecaseImpl());
  gh.singleton<_i7.DevLoggerInterface>(_i7.DevLogger(),
      registerFor: {_developement});
  gh.singleton<_i7.DevLoggerInterface>(_i7.ProdLogger(),
      registerFor: {_production});
  gh.lazySingleton<_i8.LicenseDataSource>(() => _i9.LicenseDataSourceImpl());
  gh.lazySingleton<_i10.LicenseRepository>(
      () => _i11.LicenseRepositoryImpl(get<_i8.LicenseDataSource>()));
  gh.singleton<_i12.Routes>(_i12.Routes());
  gh.singleton<_i13.SharedPrefsInterface>(_i13.SharedPrefs());
  gh.factory<_i14.ThemeCubit>(() => _i14.ThemeCubit());
  gh.lazySingleton<_i15.AboutRepository>(
      () => _i16.AboutRepositoryImpl(get<_i3.AboutUsecase>()));
  gh.lazySingleton<_i17.CollatzConjectureRepository>(() =>
      _i18.CollatzConjectureRepositoryImpl(
          get<_i5.CollatzConjectureUsecase>()));
  gh.factory<_i19.CollatzNumberCubit>(
      () => _i19.CollatzNumberCubit(get<_i17.CollatzConjectureRepository>()));
  gh.factory<_i20.LicenseCubit>(
      () => _i20.LicenseCubit(get<_i10.LicenseRepository>()));
  gh.factory<_i21.AboutCubit>(
      () => _i21.AboutCubit(get<_i15.AboutRepository>()));
  return get;
}
