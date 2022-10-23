import 'package:collatz_conjecture/src/features/home/home.dart';

abstract class CollatzConjectureLocalDataSources {
  Future<ResultDataModel> procesNumber({required int initial});
}
