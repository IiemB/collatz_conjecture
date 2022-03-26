// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/domain/repositories/collatz_conjecture_repository.dart'
    as _i13;
import '../../features/home/domain/repositories/collatz_conjecture_repository_impl.dart'
    as _i14;
import '../../features/home/domain/usecases/collatz_conjecture_usecase.dart'
    as _i3;
import '../../features/home/domain/usecases/collatz_conjecture_usecase_impl.dart'
    as _i4;
import '../../features/home/presentation/cubit/collatz_number_cubit.dart'
    as _i15;
import '../../features/license/data/datasources/license_datasource.dart' as _i6;
import '../../features/license/data/datasources/license_datasource_impl.dart'
    as _i7;
import '../../features/license/data/repositories/license_repository.dart'
    as _i8;
import '../../features/license/data/repositories/license_repository_impl.dart'
    as _i9;
import '../../features/license/presentation/cubit/license_cubit.dart' as _i16;
import '../../features/theme/presentation/cubit/theme_cubit.dart' as _i12;
import '../dev_logger/dev_logger.dart' as _i5;
import '../routes/routes.dart' as _i10;
import '../shared_prefs/shared_prefs.dart' as _i11;

const String _developement = 'developement';
const String _production = 'production';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.CollatzConjectureUsecase>(
      () => _i4.CollatzConjectureUsecaseImpl());
  gh.singleton<_i5.DevLoggerInterface>(_i5.DevLogger(),
      registerFor: {_developement});
  gh.singleton<_i5.DevLoggerInterface>(_i5.ProdLogger(),
      registerFor: {_production});
  gh.lazySingleton<_i6.LicenseDataSource>(() => _i7.LicenseDataSourceImpl());
  gh.lazySingleton<_i8.LicenseRepository>(
      () => _i9.LicenseRepositoryImpl(get<_i6.LicenseDataSource>()));
  gh.singleton<_i10.Routes>(_i10.Routes());
  gh.singleton<_i11.SharedPrefsInterface>(_i11.SharedPrefs());
  gh.factory<_i12.ThemeCubit>(() => _i12.ThemeCubit());
  gh.lazySingleton<_i13.CollatzConjectureRepository>(() =>
      _i14.CollatzConjectureRepositoryImpl(
          get<_i3.CollatzConjectureUsecase>()));
  gh.factory<_i15.CollatzNumberCubit>(
      () => _i15.CollatzNumberCubit(get<_i13.CollatzConjectureRepository>()));
  gh.factory<_i16.LicenseCubit>(
      () => _i16.LicenseCubit(get<_i8.LicenseRepository>()));
  return get;
}
