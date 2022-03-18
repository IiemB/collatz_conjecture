import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'chart_state.dart';

@injectable
class ChartCubit extends Cubit<ChartState> {
  ChartCubit() : super(ChartState.lineChart);

  void changeState() {
    if (state == ChartState.lineChart) {
      emit(ChartState.pieChart);
    } else {
      emit(ChartState.lineChart);
    }
  }
}
