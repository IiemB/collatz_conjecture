import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/home/home.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collatz_number_state.dart';
part 'collatz_number_cubit.freezed.dart';

class CollatzNumberCubit extends Cubit<CollatzNumberState> {
  CollatzNumberCubit() : super(const CollatzNumberState.initial());

  void processNumber(int number) async {
    emit(const CollatzNumberState.loading());

    final result =
        await CollatzConjectureLocalUsecases.processNumber(initial: number);

    await Future.delayed(const Duration(seconds: 3));

    result.fold(
      (l) => emit(CollatzNumberState.error(l)),
      (r) => emit(CollatzNumberState.succees(result: r)),
    );
  }

  void resetState() {
    emit(const CollatzNumberState.initial());
  }
}
