import 'package:collatz_conjecture/src/features/home/data/models/result_data_model.dart';

abstract class CollatzConjectureUsecase {
  Future<ResultDataModel> procesNumber({required int initial});
}
