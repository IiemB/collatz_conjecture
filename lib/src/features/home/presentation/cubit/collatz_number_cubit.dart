import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/home/data/models/result_data_model.dart';
import 'package:collatz_conjecture/src/features/home/domain/repositories/collatz_conjecture_repositories.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'collatz_number_state.dart';
part 'collatz_number_cubit.freezed.dart';

@injectable
class CollatzNumberCubit extends Cubit<CollatzNumberState> {
  final CollatzConjectureRepositories _collatzConjectureRepositories;
  CollatzNumberCubit(this._collatzConjectureRepositories)
      : super(const CollatzNumberState.initial());

  void processNumber(int number) async {
    emit(const CollatzNumberState.loading());

    final _result =
        await _collatzConjectureRepositories.processNumber(number: number);

    await Future.delayed(const Duration(seconds: 3));

    _result.fold(
      (l) => emit(CollatzNumberState.error(l)),
      (r) => emit(CollatzNumberState.succees(result: r)),
    );
  }

  void resetState() {
    emit(const CollatzNumberState.initial());
  }
}
