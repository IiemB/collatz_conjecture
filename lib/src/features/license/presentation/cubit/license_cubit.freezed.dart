// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'license_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LicenseStateTearOff {
  const _$LicenseStateTearOff();

  _LicenseStateInitial initial() {
    return const _LicenseStateInitial();
  }

  _LicenseStateLoading loading() {
    return const _LicenseStateLoading();
  }

  _LicenseStateLoaded loaded(LicensesDataModel licensesData) {
    return _LicenseStateLoaded(
      licensesData,
    );
  }

  _LicenseStateError error(Failure failure) {
    return _LicenseStateError(
      failure,
    );
  }
}

/// @nodoc
const $LicenseState = _$LicenseStateTearOff();

/// @nodoc
mixin _$LicenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LicensesDataModel licensesData) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LicenseStateInitial value) initial,
    required TResult Function(_LicenseStateLoading value) loading,
    required TResult Function(_LicenseStateLoaded value) loaded,
    required TResult Function(_LicenseStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseStateCopyWith<$Res> {
  factory $LicenseStateCopyWith(
          LicenseState value, $Res Function(LicenseState) then) =
      _$LicenseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LicenseStateCopyWithImpl<$Res> implements $LicenseStateCopyWith<$Res> {
  _$LicenseStateCopyWithImpl(this._value, this._then);

  final LicenseState _value;
  // ignore: unused_field
  final $Res Function(LicenseState) _then;
}

/// @nodoc
abstract class _$LicenseStateInitialCopyWith<$Res> {
  factory _$LicenseStateInitialCopyWith(_LicenseStateInitial value,
          $Res Function(_LicenseStateInitial) then) =
      __$LicenseStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LicenseStateInitialCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res>
    implements _$LicenseStateInitialCopyWith<$Res> {
  __$LicenseStateInitialCopyWithImpl(
      _LicenseStateInitial _value, $Res Function(_LicenseStateInitial) _then)
      : super(_value, (v) => _then(v as _LicenseStateInitial));

  @override
  _LicenseStateInitial get _value => super._value as _LicenseStateInitial;
}

/// @nodoc

class _$_LicenseStateInitial implements _LicenseStateInitial {
  const _$_LicenseStateInitial();

  @override
  String toString() {
    return 'LicenseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LicenseStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LicensesDataModel licensesData) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LicenseStateInitial value) initial,
    required TResult Function(_LicenseStateLoading value) loading,
    required TResult Function(_LicenseStateLoaded value) loaded,
    required TResult Function(_LicenseStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LicenseStateInitial implements LicenseState {
  const factory _LicenseStateInitial() = _$_LicenseStateInitial;
}

/// @nodoc
abstract class _$LicenseStateLoadingCopyWith<$Res> {
  factory _$LicenseStateLoadingCopyWith(_LicenseStateLoading value,
          $Res Function(_LicenseStateLoading) then) =
      __$LicenseStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LicenseStateLoadingCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res>
    implements _$LicenseStateLoadingCopyWith<$Res> {
  __$LicenseStateLoadingCopyWithImpl(
      _LicenseStateLoading _value, $Res Function(_LicenseStateLoading) _then)
      : super(_value, (v) => _then(v as _LicenseStateLoading));

  @override
  _LicenseStateLoading get _value => super._value as _LicenseStateLoading;
}

/// @nodoc

class _$_LicenseStateLoading implements _LicenseStateLoading {
  const _$_LicenseStateLoading();

  @override
  String toString() {
    return 'LicenseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LicenseStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LicensesDataModel licensesData) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LicenseStateInitial value) initial,
    required TResult Function(_LicenseStateLoading value) loading,
    required TResult Function(_LicenseStateLoaded value) loaded,
    required TResult Function(_LicenseStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LicenseStateLoading implements LicenseState {
  const factory _LicenseStateLoading() = _$_LicenseStateLoading;
}

/// @nodoc
abstract class _$LicenseStateLoadedCopyWith<$Res> {
  factory _$LicenseStateLoadedCopyWith(
          _LicenseStateLoaded value, $Res Function(_LicenseStateLoaded) then) =
      __$LicenseStateLoadedCopyWithImpl<$Res>;
  $Res call({LicensesDataModel licensesData});
}

/// @nodoc
class __$LicenseStateLoadedCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res>
    implements _$LicenseStateLoadedCopyWith<$Res> {
  __$LicenseStateLoadedCopyWithImpl(
      _LicenseStateLoaded _value, $Res Function(_LicenseStateLoaded) _then)
      : super(_value, (v) => _then(v as _LicenseStateLoaded));

  @override
  _LicenseStateLoaded get _value => super._value as _LicenseStateLoaded;

  @override
  $Res call({
    Object? licensesData = freezed,
  }) {
    return _then(_LicenseStateLoaded(
      licensesData == freezed
          ? _value.licensesData
          : licensesData // ignore: cast_nullable_to_non_nullable
              as LicensesDataModel,
    ));
  }
}

/// @nodoc

class _$_LicenseStateLoaded implements _LicenseStateLoaded {
  const _$_LicenseStateLoaded(this.licensesData);

  @override
  final LicensesDataModel licensesData;

  @override
  String toString() {
    return 'LicenseState.loaded(licensesData: $licensesData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LicenseStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.licensesData, licensesData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(licensesData));

  @JsonKey(ignore: true)
  @override
  _$LicenseStateLoadedCopyWith<_LicenseStateLoaded> get copyWith =>
      __$LicenseStateLoadedCopyWithImpl<_LicenseStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LicensesDataModel licensesData) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(licensesData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return loaded?.call(licensesData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(licensesData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LicenseStateInitial value) initial,
    required TResult Function(_LicenseStateLoading value) loading,
    required TResult Function(_LicenseStateLoaded value) loaded,
    required TResult Function(_LicenseStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LicenseStateLoaded implements LicenseState {
  const factory _LicenseStateLoaded(LicensesDataModel licensesData) =
      _$_LicenseStateLoaded;

  LicensesDataModel get licensesData;
  @JsonKey(ignore: true)
  _$LicenseStateLoadedCopyWith<_LicenseStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LicenseStateErrorCopyWith<$Res> {
  factory _$LicenseStateErrorCopyWith(
          _LicenseStateError value, $Res Function(_LicenseStateError) then) =
      __$LicenseStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LicenseStateErrorCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res>
    implements _$LicenseStateErrorCopyWith<$Res> {
  __$LicenseStateErrorCopyWithImpl(
      _LicenseStateError _value, $Res Function(_LicenseStateError) _then)
      : super(_value, (v) => _then(v as _LicenseStateError));

  @override
  _LicenseStateError get _value => super._value as _LicenseStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LicenseStateError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LicenseStateError implements _LicenseStateError {
  const _$_LicenseStateError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LicenseState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LicenseStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$LicenseStateErrorCopyWith<_LicenseStateError> get copyWith =>
      __$LicenseStateErrorCopyWithImpl<_LicenseStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LicensesDataModel licensesData) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LicensesDataModel licensesData)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LicenseStateInitial value) initial,
    required TResult Function(_LicenseStateLoading value) loading,
    required TResult Function(_LicenseStateLoaded value) loaded,
    required TResult Function(_LicenseStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LicenseStateInitial value)? initial,
    TResult Function(_LicenseStateLoading value)? loading,
    TResult Function(_LicenseStateLoaded value)? loaded,
    TResult Function(_LicenseStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LicenseStateError implements LicenseState {
  const factory _LicenseStateError(Failure failure) = _$_LicenseStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$LicenseStateErrorCopyWith<_LicenseStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
