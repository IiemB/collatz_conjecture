// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/about/about.dart' as _i3;
import '../../features/about/data/datasources/about_local_datasources_impl.dart'
    as _i4;
import '../../features/about/data/repositories/about_repository_impl.dart'
    as _i5;
import '../../features/home/data/datasources/collatz_conjecture_local_data_sources_impl.dart'
    as _i7;
import '../../features/home/data/repositories/collatz_conjecture_repository_impl.dart'
    as _i8;
import '../../features/home/home.dart' as _i6;
import '../../features/license/data/datasources/license_local_datasources_impl.dart'
    as _i12;
import '../../features/license/data/repositories/license_repository_impl.dart'
    as _i13;
import '../../features/license/license.dart' as _i11;
import '../../features/license/presentation/cubit/license/license_cubit.dart'
    as _i10;
import '../../features/theme/presentation/cubit/theme_cubit.dart' as _i16;
import '../dev_logger/dev_logger.dart' as _i9;
import '../routes/app_routes.dart' as _i14;
import '../shared_prefs/shared_preferences.dart' as _i15;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AboutLocalDatasources>(
      () => _i4.AboutLocalDatasourcesImpl());
  gh.lazySingleton<_i3.AboutRepository>(
      () => _i5.AboutRepositoryImpl(get<_i3.AboutLocalDatasources>()));
  gh.lazySingleton<_i6.CollatzConjectureLocalDataSources>(
      () => _i7.CollatzConjectureLocalDataSourcesImpl());
  gh.lazySingleton<_i6.CollatzConjectureRepository>(() =>
      _i8.CollatzConjectureRepositoryImpl(
          get<_i6.CollatzConjectureLocalDataSources>()));
  gh.singleton<_i9.DevLoggerInterface>(
    _i9.DevLogger(),
    registerFor: {_dev},
  );
  gh.singleton<_i9.DevLoggerInterface>(
    _i9.ProdLogger(),
    registerFor: {_prod},
  );
  gh.factory<_i10.LicenseCubit>(() => _i10.LicenseCubit());
  gh.lazySingleton<_i11.LicenseLocalDatasources>(
      () => _i12.LicenseLocalDatasourceImpl());
  gh.lazySingleton<_i11.LicenseRepository>(
      () => _i13.LicenseRepositoryImpl(get<_i11.LicenseLocalDatasources>()));
  gh.singleton<_i14.Routes>(_i14.Routes());
  gh.singleton<_i15.SharedPrefsInterface>(_i15.SharedPrefs());
  gh.factory<_i16.ThemeCubit>(() => _i16.ThemeCubit());
  return get;
}
