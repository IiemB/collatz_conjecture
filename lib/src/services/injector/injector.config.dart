// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/theme/presentation/cubit/theme_cubit.dart' as _i6;
import '../dev_logger/dev_logger.dart' as _i3;
import '../routes/routes.dart' as _i4;
import '../shared_prefs/shared_prefs.dart' as _i5;

const String _developement = 'developement';
const String _production = 'production';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.DevLoggerInterface>(_i3.DevLogger(),
      registerFor: {_developement});
  gh.singleton<_i3.DevLoggerInterface>(_i3.ProdLogger(),
      registerFor: {_production});
  gh.singleton<_i4.Routes>(_i4.Routes());
  gh.singleton<_i5.SharedPrefsInterface>(_i5.SharedPrefs());
  gh.factory<_i6.ThemeCubit>(() => _i6.ThemeCubit());
  return get;
}
