// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collatz_number_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CollatzNumberStateTearOff {
  const _$CollatzNumberStateTearOff();

  CollatzNumberStateInitial initial() {
    return const CollatzNumberStateInitial();
  }

  CollatzNumberStateLoading loading() {
    return const CollatzNumberStateLoading();
  }

  CollatzNumberStateSuccess succees(List<ChartDataModel> data) {
    return CollatzNumberStateSuccess(
      data,
    );
  }

  CollatzNumberStateError error(Failure failure) {
    return CollatzNumberStateError(
      failure,
    );
  }
}

/// @nodoc
const $CollatzNumberState = _$CollatzNumberStateTearOff();

/// @nodoc
mixin _$CollatzNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChartDataModel> data) succees,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollatzNumberStateInitial value) initial,
    required TResult Function(CollatzNumberStateLoading value) loading,
    required TResult Function(CollatzNumberStateSuccess value) succees,
    required TResult Function(CollatzNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollatzNumberStateCopyWith<$Res> {
  factory $CollatzNumberStateCopyWith(
          CollatzNumberState value, $Res Function(CollatzNumberState) then) =
      _$CollatzNumberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollatzNumberStateCopyWithImpl<$Res>
    implements $CollatzNumberStateCopyWith<$Res> {
  _$CollatzNumberStateCopyWithImpl(this._value, this._then);

  final CollatzNumberState _value;
  // ignore: unused_field
  final $Res Function(CollatzNumberState) _then;
}

/// @nodoc
abstract class $CollatzNumberStateInitialCopyWith<$Res> {
  factory $CollatzNumberStateInitialCopyWith(CollatzNumberStateInitial value,
          $Res Function(CollatzNumberStateInitial) then) =
      _$CollatzNumberStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollatzNumberStateInitialCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res>
    implements $CollatzNumberStateInitialCopyWith<$Res> {
  _$CollatzNumberStateInitialCopyWithImpl(CollatzNumberStateInitial _value,
      $Res Function(CollatzNumberStateInitial) _then)
      : super(_value, (v) => _then(v as CollatzNumberStateInitial));

  @override
  CollatzNumberStateInitial get _value =>
      super._value as CollatzNumberStateInitial;
}

/// @nodoc

class _$CollatzNumberStateInitial implements CollatzNumberStateInitial {
  const _$CollatzNumberStateInitial();

  @override
  String toString() {
    return 'CollatzNumberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollatzNumberStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChartDataModel> data) succees,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
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
    required TResult Function(CollatzNumberStateInitial value) initial,
    required TResult Function(CollatzNumberStateLoading value) loading,
    required TResult Function(CollatzNumberStateSuccess value) succees,
    required TResult Function(CollatzNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CollatzNumberStateInitial implements CollatzNumberState {
  const factory CollatzNumberStateInitial() = _$CollatzNumberStateInitial;
}

/// @nodoc
abstract class $CollatzNumberStateLoadingCopyWith<$Res> {
  factory $CollatzNumberStateLoadingCopyWith(CollatzNumberStateLoading value,
          $Res Function(CollatzNumberStateLoading) then) =
      _$CollatzNumberStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollatzNumberStateLoadingCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res>
    implements $CollatzNumberStateLoadingCopyWith<$Res> {
  _$CollatzNumberStateLoadingCopyWithImpl(CollatzNumberStateLoading _value,
      $Res Function(CollatzNumberStateLoading) _then)
      : super(_value, (v) => _then(v as CollatzNumberStateLoading));

  @override
  CollatzNumberStateLoading get _value =>
      super._value as CollatzNumberStateLoading;
}

/// @nodoc

class _$CollatzNumberStateLoading implements CollatzNumberStateLoading {
  const _$CollatzNumberStateLoading();

  @override
  String toString() {
    return 'CollatzNumberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollatzNumberStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChartDataModel> data) succees,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
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
    required TResult Function(CollatzNumberStateInitial value) initial,
    required TResult Function(CollatzNumberStateLoading value) loading,
    required TResult Function(CollatzNumberStateSuccess value) succees,
    required TResult Function(CollatzNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CollatzNumberStateLoading implements CollatzNumberState {
  const factory CollatzNumberStateLoading() = _$CollatzNumberStateLoading;
}

/// @nodoc
abstract class $CollatzNumberStateSuccessCopyWith<$Res> {
  factory $CollatzNumberStateSuccessCopyWith(CollatzNumberStateSuccess value,
          $Res Function(CollatzNumberStateSuccess) then) =
      _$CollatzNumberStateSuccessCopyWithImpl<$Res>;
  $Res call({List<ChartDataModel> data});
}

/// @nodoc
class _$CollatzNumberStateSuccessCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res>
    implements $CollatzNumberStateSuccessCopyWith<$Res> {
  _$CollatzNumberStateSuccessCopyWithImpl(CollatzNumberStateSuccess _value,
      $Res Function(CollatzNumberStateSuccess) _then)
      : super(_value, (v) => _then(v as CollatzNumberStateSuccess));

  @override
  CollatzNumberStateSuccess get _value =>
      super._value as CollatzNumberStateSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(CollatzNumberStateSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChartDataModel>,
    ));
  }
}

/// @nodoc

class _$CollatzNumberStateSuccess implements CollatzNumberStateSuccess {
  const _$CollatzNumberStateSuccess(this.data);

  @override
  final List<ChartDataModel> data;

  @override
  String toString() {
    return 'CollatzNumberState.succees(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollatzNumberStateSuccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $CollatzNumberStateSuccessCopyWith<CollatzNumberStateSuccess> get copyWith =>
      _$CollatzNumberStateSuccessCopyWithImpl<CollatzNumberStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChartDataModel> data) succees,
    required TResult Function(Failure failure) error,
  }) {
    return succees(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
    TResult Function(Failure failure)? error,
  }) {
    return succees?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (succees != null) {
      return succees(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollatzNumberStateInitial value) initial,
    required TResult Function(CollatzNumberStateLoading value) loading,
    required TResult Function(CollatzNumberStateSuccess value) succees,
    required TResult Function(CollatzNumberStateError value) error,
  }) {
    return succees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
  }) {
    return succees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (succees != null) {
      return succees(this);
    }
    return orElse();
  }
}

abstract class CollatzNumberStateSuccess implements CollatzNumberState {
  const factory CollatzNumberStateSuccess(List<ChartDataModel> data) =
      _$CollatzNumberStateSuccess;

  List<ChartDataModel> get data;
  @JsonKey(ignore: true)
  $CollatzNumberStateSuccessCopyWith<CollatzNumberStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollatzNumberStateErrorCopyWith<$Res> {
  factory $CollatzNumberStateErrorCopyWith(CollatzNumberStateError value,
          $Res Function(CollatzNumberStateError) then) =
      _$CollatzNumberStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$CollatzNumberStateErrorCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res>
    implements $CollatzNumberStateErrorCopyWith<$Res> {
  _$CollatzNumberStateErrorCopyWithImpl(CollatzNumberStateError _value,
      $Res Function(CollatzNumberStateError) _then)
      : super(_value, (v) => _then(v as CollatzNumberStateError));

  @override
  CollatzNumberStateError get _value => super._value as CollatzNumberStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(CollatzNumberStateError(
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

class _$CollatzNumberStateError implements CollatzNumberStateError {
  const _$CollatzNumberStateError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CollatzNumberState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollatzNumberStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $CollatzNumberStateErrorCopyWith<CollatzNumberStateError> get copyWith =>
      _$CollatzNumberStateErrorCopyWithImpl<CollatzNumberStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChartDataModel> data) succees,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChartDataModel> data)? succees,
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
    required TResult Function(CollatzNumberStateInitial value) initial,
    required TResult Function(CollatzNumberStateLoading value) loading,
    required TResult Function(CollatzNumberStateSuccess value) succees,
    required TResult Function(CollatzNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollatzNumberStateInitial value)? initial,
    TResult Function(CollatzNumberStateLoading value)? loading,
    TResult Function(CollatzNumberStateSuccess value)? succees,
    TResult Function(CollatzNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CollatzNumberStateError implements CollatzNumberState {
  const factory CollatzNumberStateError(Failure failure) =
      _$CollatzNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  $CollatzNumberStateErrorCopyWith<CollatzNumberStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
