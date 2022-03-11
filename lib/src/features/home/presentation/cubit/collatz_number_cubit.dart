import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/home/domain/entities/chart_data_model.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collatz_number_state.dart';
part 'collatz_number_cubit.freezed.dart';

class CollatzNumberCubit extends Cubit<CollatzNumberState> {
  CollatzNumberCubit() : super(const CollatzNumberState.initial());
}
