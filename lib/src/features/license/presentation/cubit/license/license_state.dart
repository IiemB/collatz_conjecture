part of 'license_cubit.dart';

@freezed
class LicenseState with _$LicenseState {
  const factory LicenseState.initial() = _LicenseStateInitial;
  const factory LicenseState.loading() = _LicenseStateLoading;
  const factory LicenseState.loaded(LicensesDataModel licensesData) =
      _LicenseStateLoaded;
  const factory LicenseState.error(Failure failure) = _LicenseStateError;
}
