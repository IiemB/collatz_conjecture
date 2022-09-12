// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/about/about.dart' as _i3;
import '../../features/about/domain/repositories/about_repository_impl.dart'
    as _i14;
import '../../features/about/domain/usecases/about_usecase_impl.dart' as _i4;
import '../../features/about/presentation/cubit/about/about_cubit.dart' as _i18;
import '../../features/home/domain/repositories/collatz_conjecture_repository_impl.dart'
    as _i15;
import '../../features/home/domain/usecases/collatz_conjecture_usecase_impl.dart'
    as _i6;
import '../../features/home/home.dart' as _i5;
import '../../features/home/presentation/cubit/collatz_number/collatz_number_cubit.dart'
    as _i16;
import '../../features/license/data/datasources/license_datasource_impl.dart'
    as _i9;
import '../../features/license/data/repositories/license_repository_impl.dart'
    as _i10;
import '../../features/license/license.dart' as _i8;
import '../../features/license/presentation/cubit/license/license_cubit.dart'
    as _i17;
import '../../features/theme/presentation/cubit/theme_cubit.dart' as _i13;
import '../dev_logger/dev_logger.dart' as _i7;
import '../routes/app_routes.dart' as _i11;
import '../shared_prefs/shared_preferences.dart' as _i12;

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
  gh.lazySingleton<_i8.LicenseRepository>(
      () => _i10.LicenseRepositoryImpl(get<_i8.LicenseDataSource>()));
  gh.singleton<_i11.Routes>(_i11.Routes());
  gh.singleton<_i12.SharedPrefsInterface>(_i12.SharedPrefs());
  gh.factory<_i13.ThemeCubit>(() => _i13.ThemeCubit());
  gh.lazySingleton<_i3.AboutRepository>(
      () => _i14.AboutRepositoryImpl(get<_i3.AboutUsecase>()));
  gh.lazySingleton<_i5.CollatzConjectureRepository>(() =>
      _i15.CollatzConjectureRepositoryImpl(
          get<_i5.CollatzConjectureUsecase>()));
  gh.factory<_i16.CollatzNumberCubit>(
      () => _i16.CollatzNumberCubit(get<_i5.CollatzConjectureRepository>()));
  gh.factory<_i17.LicenseCubit>(
      () => _i17.LicenseCubit(get<_i8.LicenseRepository>()));
  gh.factory<_i18.AboutCubit>(
      () => _i18.AboutCubit(get<_i3.AboutRepository>()));
  return get;
}
