part of 'about_cubit.dart';

@freezed
class AboutState with _$AboutState {
  const factory AboutState.initial() = _AboutStateInitial;
  const factory AboutState.loading() = _AboutStateLoading;
  const factory AboutState.infoLoaded(PackageInfo packageInfo) =
      _AboutStateInfoLoaded;
  const factory AboutState.error(Failure failure) = _AboutStateError;
}
