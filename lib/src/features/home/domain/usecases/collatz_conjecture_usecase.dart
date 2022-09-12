import 'package:collatz_conjecture/src/features/home/home.dart';

abstract class CollatzConjectureUsecase {
  Future<ResultDataModel> procesNumber({required int initial});
}
