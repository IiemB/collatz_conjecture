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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollatzNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultDataModel result) succees,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultDataModel result)? succees,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultDataModel result)? succees,
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
    TResult? Function(CollatzNumberStateInitial value)? initial,
    TResult? Function(CollatzNumberStateLoading value)? loading,
    TResult? Function(CollatzNumberStateSuccess value)? succees,
    TResult? Function(CollatzNumberStateError value)? error,
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
      _$CollatzNumberStateCopyWithImpl<$Res, CollatzNumberState>;
}

/// @nodoc
class _$CollatzNumberStateCopyWithImpl<$Res, $Val extends CollatzNumberState>
    implements $CollatzNumberStateCopyWith<$Res> {
  _$CollatzNumberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CollatzNumberStateInitialCopyWith<$Res> {
  factory _$$CollatzNumberStateInitialCopyWith(
          _$CollatzNumberStateInitial value,
          $Res Function(_$CollatzNumberStateInitial) then) =
      __$$CollatzNumberStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollatzNumberStateInitialCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res, _$CollatzNumberStateInitial>
    implements _$$CollatzNumberStateInitialCopyWith<$Res> {
  __$$CollatzNumberStateInitialCopyWithImpl(_$CollatzNumberStateInitial _value,
      $Res Function(_$CollatzNumberStateInitial) _then)
      : super(_value, _then);
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
            other is _$CollatzNumberStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultDataModel result) succees,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultDataModel result)? succees,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultDataModel result)? succees,
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
    TResult? Function(CollatzNumberStateInitial value)? initial,
    TResult? Function(CollatzNumberStateLoading value)? loading,
    TResult? Function(CollatzNumberStateSuccess value)? succees,
    TResult? Function(CollatzNumberStateError value)? error,
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
abstract class _$$CollatzNumberStateLoadingCopyWith<$Res> {
  factory _$$CollatzNumberStateLoadingCopyWith(
          _$CollatzNumberStateLoading value,
          $Res Function(_$CollatzNumberStateLoading) then) =
      __$$CollatzNumberStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollatzNumberStateLoadingCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res, _$CollatzNumberStateLoading>
    implements _$$CollatzNumberStateLoadingCopyWith<$Res> {
  __$$CollatzNumberStateLoadingCopyWithImpl(_$CollatzNumberStateLoading _value,
      $Res Function(_$CollatzNumberStateLoading) _then)
      : super(_value, _then);
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
            other is _$CollatzNumberStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultDataModel result) succees,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultDataModel result)? succees,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultDataModel result)? succees,
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
    TResult? Function(CollatzNumberStateInitial value)? initial,
    TResult? Function(CollatzNumberStateLoading value)? loading,
    TResult? Function(CollatzNumberStateSuccess value)? succees,
    TResult? Function(CollatzNumberStateError value)? error,
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
abstract class _$$CollatzNumberStateSuccessCopyWith<$Res> {
  factory _$$CollatzNumberStateSuccessCopyWith(
          _$CollatzNumberStateSuccess value,
          $Res Function(_$CollatzNumberStateSuccess) then) =
      __$$CollatzNumberStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultDataModel result});

  $ResultDataModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$CollatzNumberStateSuccessCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res, _$CollatzNumberStateSuccess>
    implements _$$CollatzNumberStateSuccessCopyWith<$Res> {
  __$$CollatzNumberStateSuccessCopyWithImpl(_$CollatzNumberStateSuccess _value,
      $Res Function(_$CollatzNumberStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$CollatzNumberStateSuccess(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultDataModelCopyWith<$Res> get result {
    return $ResultDataModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$CollatzNumberStateSuccess implements CollatzNumberStateSuccess {
  const _$CollatzNumberStateSuccess({required this.result});

  @override
  final ResultDataModel result;

  @override
  String toString() {
    return 'CollatzNumberState.succees(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollatzNumberStateSuccess &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollatzNumberStateSuccessCopyWith<_$CollatzNumberStateSuccess>
      get copyWith => __$$CollatzNumberStateSuccessCopyWithImpl<
          _$CollatzNumberStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultDataModel result) succees,
    required TResult Function(Failure failure) error,
  }) {
    return succees(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultDataModel result)? succees,
    TResult? Function(Failure failure)? error,
  }) {
    return succees?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultDataModel result)? succees,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (succees != null) {
      return succees(result);
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
    TResult? Function(CollatzNumberStateInitial value)? initial,
    TResult? Function(CollatzNumberStateLoading value)? loading,
    TResult? Function(CollatzNumberStateSuccess value)? succees,
    TResult? Function(CollatzNumberStateError value)? error,
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
  const factory CollatzNumberStateSuccess(
      {required final ResultDataModel result}) = _$CollatzNumberStateSuccess;

  ResultDataModel get result;
  @JsonKey(ignore: true)
  _$$CollatzNumberStateSuccessCopyWith<_$CollatzNumberStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollatzNumberStateErrorCopyWith<$Res> {
  factory _$$CollatzNumberStateErrorCopyWith(_$CollatzNumberStateError value,
          $Res Function(_$CollatzNumberStateError) then) =
      __$$CollatzNumberStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CollatzNumberStateErrorCopyWithImpl<$Res>
    extends _$CollatzNumberStateCopyWithImpl<$Res, _$CollatzNumberStateError>
    implements _$$CollatzNumberStateErrorCopyWith<$Res> {
  __$$CollatzNumberStateErrorCopyWithImpl(_$CollatzNumberStateError _value,
      $Res Function(_$CollatzNumberStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CollatzNumberStateError(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$CollatzNumberStateError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollatzNumberStateErrorCopyWith<_$CollatzNumberStateError> get copyWith =>
      __$$CollatzNumberStateErrorCopyWithImpl<_$CollatzNumberStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultDataModel result) succees,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultDataModel result)? succees,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultDataModel result)? succees,
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
    TResult? Function(CollatzNumberStateInitial value)? initial,
    TResult? Function(CollatzNumberStateLoading value)? loading,
    TResult? Function(CollatzNumberStateSuccess value)? succees,
    TResult? Function(CollatzNumberStateError value)? error,
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
  const factory CollatzNumberStateError(final Failure failure) =
      _$CollatzNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CollatzNumberStateErrorCopyWith<_$CollatzNumberStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
