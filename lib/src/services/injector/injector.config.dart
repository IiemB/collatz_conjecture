// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/domain/repositories/collatz_conjecture_repositories.dart'
    as _i3;
import '../../features/home/domain/usecases/collatz_conjecture_usecase.dart'
    as _i4;
import '../../features/theme/presentation/cubit/theme_cubit.dart' as _i8;
import '../dev_logger/dev_logger.dart' as _i5;
import '../routes/routes.dart' as _i6;
import '../shared_prefs/shared_prefs.dart' as _i7;

const String _developement = 'developement';
const String _production = 'production';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.CollatzConjectureRepositories>(
      _i4.CollatzConjectureUsecase());
  gh.singleton<_i5.DevLoggerInterface>(_i5.DevLogger(),
      registerFor: {_developement});
  gh.singleton<_i5.DevLoggerInterface>(_i5.ProdLogger(),
      registerFor: {_production});
  gh.singleton<_i6.Routes>(_i6.Routes());
  gh.singleton<_i7.SharedPrefsInterface>(_i7.SharedPrefs());
  gh.factory<_i8.ThemeCubit>(() => _i8.ThemeCubit());
  return get;
}
