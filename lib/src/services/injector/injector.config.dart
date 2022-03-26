// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/domain/repositories/collatz_conjecture_repository.dart'
    as _i3;
import '../../features/home/domain/repositories/collatz_conjecture_repository_impl.dart'
    as _i4;
import '../../features/home/domain/usecases/collatz_conjecture_usecase.dart'
    as _i5;
import '../../features/home/presentation/cubit/collatz_number_cubit.dart'
    as _i6;
import '../../features/license/data/datasources/license_datasource.dart' as _i8;
import '../../features/license/data/datasources/license_datasource_impl.dart'
    as _i9;
import '../../features/license/data/repositories/license_repository.dart'
    as _i10;
import '../../features/license/data/repositories/license_repository_impl.dart'
    as _i11;
import '../../features/license/presentation/cubit/license_cubit.dart' as _i15;
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
  gh.singleton<_i3.CollatzConjectureRepository>(
      _i4.CollatzConjectureRepositoryImpl(get<_i5.CollatzConjectureUsecase>()));
  gh.factory<_i6.CollatzNumberCubit>(
      () => _i6.CollatzNumberCubit(get<_i3.CollatzConjectureRepository>()));
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
  gh.factory<_i15.LicenseCubit>(
      () => _i15.LicenseCubit(get<_i10.LicenseRepository>()));
  return get;
}
