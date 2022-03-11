part of 'collatz_number_cubit.dart';

@freezed
class CollatzNumberState with _$CollatzNumberState {
  const factory CollatzNumberState.initial() = CollatzNumberStateInitial;
  const factory CollatzNumberState.loading() = CollatzNumberStateLoading;
  const factory CollatzNumberState.succees(List<ChartDataModel> data) =
      CollatzNumberStateSuccess;
  const factory CollatzNumberState.error(Failure failure) =
      CollatzNumberStateError;
}
