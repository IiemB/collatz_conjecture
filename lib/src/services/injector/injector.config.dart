// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/domain/repositories/collatz_conjecture_repositories.dart'
    as _i4;
import '../../features/home/domain/usecases/collatz_conjecture_usecase.dart'
    as _i5;
import '../../features/home/presentation/cubit/chart_cubit.dart' as _i3;
import '../../features/home/presentation/cubit/collatz_number_cubit.dart'
    as _i6;
import '../../features/theme/presentation/cubit/theme_cubit.dart' as _i10;
import '../dev_logger/dev_logger.dart' as _i7;
import '../routes/routes.dart' as _i8;
import '../shared_prefs/shared_prefs.dart' as _i9;

const String _developement = 'developement';
const String _production = 'production';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ChartCubit>(() => _i3.ChartCubit());
  gh.singleton<_i4.CollatzConjectureRepositories>(
      _i5.CollatzConjectureUsecase());
  gh.factory<_i6.CollatzNumberCubit>(
      () => _i6.CollatzNumberCubit(get<_i4.CollatzConjectureRepositories>()));
  gh.singleton<_i7.DevLoggerInterface>(_i7.DevLogger(),
      registerFor: {_developement});
  gh.singleton<_i7.DevLoggerInterface>(_i7.ProdLogger(),
      registerFor: {_production});
  gh.singleton<_i8.Routes>(_i8.Routes());
  gh.singleton<_i9.SharedPrefsInterface>(_i9.SharedPrefs());
  gh.factory<_i10.ThemeCubit>(() => _i10.ThemeCubit());
  return get;
}
