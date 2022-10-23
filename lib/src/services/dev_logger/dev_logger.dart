import 'package:collatz_conjecture/src/services/services.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

abstract class DevLoggerInterface {
  Logger get logger;
}

@Singleton(env: [Environment.dev], as: DevLoggerInterface)
class DevLogger implements DevLoggerInterface {
  @override
  Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 1,
      printTime: true,
      lineLength: 50,
    ),
    level: Level.debug,
  );
}

@Singleton(env: [Environment.prod], as: DevLoggerInterface)
class ProdLogger implements DevLoggerInterface {
  @override
  Logger logger = Logger(
    printer: PrettyPrinter(methodCount: 0),
    level: Level.warning,
  );
}

final devLogger = getIt<DevLoggerInterface>().logger;
