import 'package:collatz_conjecture/src/services/di/di.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void initInjector({String? env}) => $initGetIt(getIt, environment: env);
