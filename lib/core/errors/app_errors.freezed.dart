// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiException {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) server,
    required TResult Function(String msg) notFound,
    required TResult Function(String msg) network,
    required TResult Function(String msg) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? server,
    TResult? Function(String msg)? notFound,
    TResult? Function(String msg)? network,
    TResult? Function(String msg)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? server,
    TResult Function(String msg)? notFound,
    TResult Function(String msg)? network,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) server,
    required TResult Function(_NotFoundError value) notFound,
    required TResult Function(_NetworkError value) network,
    required TResult Function(_UnKnownError value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? server,
    TResult? Function(_NotFoundError value)? notFound,
    TResult? Function(_NetworkError value)? network,
    TResult? Function(_UnKnownError value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? server,
    TResult Function(_NotFoundError value)? notFound,
    TResult Function(_NetworkError value)? network,
    TResult Function(_UnKnownError value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiExceptionCopyWith<ApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ServerErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl(
      {this.msg = 'Server went wrong ! Please try again later '});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'ApiException.server(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) server,
    required TResult Function(String msg) notFound,
    required TResult Function(String msg) network,
    required TResult Function(String msg) unknown,
  }) {
    return server(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? server,
    TResult? Function(String msg)? notFound,
    TResult? Function(String msg)? network,
    TResult? Function(String msg)? unknown,
  }) {
    return server?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? server,
    TResult Function(String msg)? notFound,
    TResult Function(String msg)? network,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) server,
    required TResult Function(_NotFoundError value) notFound,
    required TResult Function(_NetworkError value) network,
    required TResult Function(_UnKnownError value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? server,
    TResult? Function(_NotFoundError value)? notFound,
    TResult? Function(_NetworkError value)? network,
    TResult? Function(_UnKnownError value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? server,
    TResult Function(_NotFoundError value)? notFound,
    TResult Function(_NetworkError value)? network,
    TResult Function(_UnKnownError value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ApiException {
  const factory _ServerError({final String msg}) = _$ServerErrorImpl;

  @override
  String get msg;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundErrorImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$NotFoundErrorImplCopyWith(
          _$NotFoundErrorImpl value, $Res Function(_$NotFoundErrorImpl) then) =
      __$$NotFoundErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NotFoundErrorImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NotFoundErrorImpl>
    implements _$$NotFoundErrorImplCopyWith<$Res> {
  __$$NotFoundErrorImplCopyWithImpl(
      _$NotFoundErrorImpl _value, $Res Function(_$NotFoundErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$NotFoundErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundErrorImpl implements _NotFoundError {
  const _$NotFoundErrorImpl(
      {this.msg = 'Something went wrong ! Please try again later '});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'ApiException.notFound(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      __$$NotFoundErrorImplCopyWithImpl<_$NotFoundErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) server,
    required TResult Function(String msg) notFound,
    required TResult Function(String msg) network,
    required TResult Function(String msg) unknown,
  }) {
    return notFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? server,
    TResult? Function(String msg)? notFound,
    TResult? Function(String msg)? network,
    TResult? Function(String msg)? unknown,
  }) {
    return notFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? server,
    TResult Function(String msg)? notFound,
    TResult Function(String msg)? network,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) server,
    required TResult Function(_NotFoundError value) notFound,
    required TResult Function(_NetworkError value) network,
    required TResult Function(_UnKnownError value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? server,
    TResult? Function(_NotFoundError value)? notFound,
    TResult? Function(_NetworkError value)? network,
    TResult? Function(_UnKnownError value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? server,
    TResult Function(_NotFoundError value)? notFound,
    TResult Function(_NetworkError value)? network,
    TResult Function(_UnKnownError value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFoundError implements ApiException {
  const factory _NotFoundError({final String msg}) = _$NotFoundErrorImpl;

  @override
  String get msg;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$NetworkErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkErrorImpl implements _NetworkError {
  const _$NetworkErrorImpl(
      {this.msg = 'Please make sure about your connection !'});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'ApiException.network(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) server,
    required TResult Function(String msg) notFound,
    required TResult Function(String msg) network,
    required TResult Function(String msg) unknown,
  }) {
    return network(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? server,
    TResult? Function(String msg)? notFound,
    TResult? Function(String msg)? network,
    TResult? Function(String msg)? unknown,
  }) {
    return network?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? server,
    TResult Function(String msg)? notFound,
    TResult Function(String msg)? network,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) server,
    required TResult Function(_NotFoundError value) notFound,
    required TResult Function(_NetworkError value) network,
    required TResult Function(_UnKnownError value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? server,
    TResult? Function(_NotFoundError value)? notFound,
    TResult? Function(_NetworkError value)? network,
    TResult? Function(_UnKnownError value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? server,
    TResult Function(_NotFoundError value)? notFound,
    TResult Function(_NetworkError value)? network,
    TResult Function(_UnKnownError value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements ApiException {
  const factory _NetworkError({final String msg}) = _$NetworkErrorImpl;

  @override
  String get msg;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnKnownErrorImplCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$UnKnownErrorImplCopyWith(
          _$UnKnownErrorImpl value, $Res Function(_$UnKnownErrorImpl) then) =
      __$$UnKnownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UnKnownErrorImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnKnownErrorImpl>
    implements _$$UnKnownErrorImplCopyWith<$Res> {
  __$$UnKnownErrorImplCopyWithImpl(
      _$UnKnownErrorImpl _value, $Res Function(_$UnKnownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$UnKnownErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnKnownErrorImpl implements _UnKnownError {
  const _$UnKnownErrorImpl(
      {this.msg = 'Something went wrong ! Please try again later '});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'ApiException.unknown(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnKnownErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnKnownErrorImplCopyWith<_$UnKnownErrorImpl> get copyWith =>
      __$$UnKnownErrorImplCopyWithImpl<_$UnKnownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) server,
    required TResult Function(String msg) notFound,
    required TResult Function(String msg) network,
    required TResult Function(String msg) unknown,
  }) {
    return unknown(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? server,
    TResult? Function(String msg)? notFound,
    TResult? Function(String msg)? network,
    TResult? Function(String msg)? unknown,
  }) {
    return unknown?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? server,
    TResult Function(String msg)? notFound,
    TResult Function(String msg)? network,
    TResult Function(String msg)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) server,
    required TResult Function(_NotFoundError value) notFound,
    required TResult Function(_NetworkError value) network,
    required TResult Function(_UnKnownError value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? server,
    TResult? Function(_NotFoundError value)? notFound,
    TResult? Function(_NetworkError value)? network,
    TResult? Function(_UnKnownError value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? server,
    TResult Function(_NotFoundError value)? notFound,
    TResult Function(_NetworkError value)? network,
    TResult Function(_UnKnownError value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnKnownError implements ApiException {
  const factory _UnKnownError({final String msg}) = _$UnKnownErrorImpl;

  @override
  String get msg;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnKnownErrorImplCopyWith<_$UnKnownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
