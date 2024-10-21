// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool obscured) togglePasswordVisibility,
    required TResult Function(bool rememberMe) toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool obscured)? togglePasswordVisibility,
    TResult? Function(bool rememberMe)? toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool obscured)? togglePasswordVisibility,
    TResult Function(bool rememberMe)? toggleRememberMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(ToggleRememberMe<T> value) toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(ToggleRememberMe<T> value)? toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(ToggleRememberMe<T> value)? toggleRememberMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<T, $Res> {
  factory $LoginStateCopyWith(
          LoginState<T> value, $Res Function(LoginState<T>) then) =
      _$LoginStateCopyWithImpl<T, $Res, LoginState<T>>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<T, $Res, $Val extends LoginState<T>>
    implements $LoginStateCopyWith<T, $Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool obscured) togglePasswordVisibility,
    required TResult Function(bool rememberMe) toggleRememberMe,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool obscured)? togglePasswordVisibility,
    TResult? Function(bool rememberMe)? toggleRememberMe,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool obscured)? togglePasswordVisibility,
    TResult Function(bool rememberMe)? toggleRememberMe,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(ToggleRememberMe<T> value) toggleRememberMe,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(ToggleRememberMe<T> value)? toggleRememberMe,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(ToggleRememberMe<T> value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityImplCopyWith<T, $Res> {
  factory _$$TogglePasswordVisibilityImplCopyWith(
          _$TogglePasswordVisibilityImpl<T> value,
          $Res Function(_$TogglePasswordVisibilityImpl<T>) then) =
      __$$TogglePasswordVisibilityImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool obscured});
}

/// @nodoc
class __$$TogglePasswordVisibilityImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$TogglePasswordVisibilityImpl<T>>
    implements _$$TogglePasswordVisibilityImplCopyWith<T, $Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
      _$TogglePasswordVisibilityImpl<T> _value,
      $Res Function(_$TogglePasswordVisibilityImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obscured = null,
  }) {
    return _then(_$TogglePasswordVisibilityImpl<T>(
      null == obscured
          ? _value.obscured
          : obscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TogglePasswordVisibilityImpl<T> implements TogglePasswordVisibility<T> {
  const _$TogglePasswordVisibilityImpl(this.obscured);

  @override
  final bool obscured;

  @override
  String toString() {
    return 'LoginState<$T>.togglePasswordVisibility(obscured: $obscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityImpl<T> &&
            (identical(other.obscured, obscured) ||
                other.obscured == obscured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, obscured);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TogglePasswordVisibilityImplCopyWith<T, _$TogglePasswordVisibilityImpl<T>>
      get copyWith => __$$TogglePasswordVisibilityImplCopyWithImpl<T,
          _$TogglePasswordVisibilityImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool obscured) togglePasswordVisibility,
    required TResult Function(bool rememberMe) toggleRememberMe,
  }) {
    return togglePasswordVisibility(obscured);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool obscured)? togglePasswordVisibility,
    TResult? Function(bool rememberMe)? toggleRememberMe,
  }) {
    return togglePasswordVisibility?.call(obscured);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool obscured)? togglePasswordVisibility,
    TResult Function(bool rememberMe)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(obscured);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(ToggleRememberMe<T> value) toggleRememberMe,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(ToggleRememberMe<T> value)? toggleRememberMe,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(ToggleRememberMe<T> value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordVisibility<T> implements LoginState<T> {
  const factory TogglePasswordVisibility(final bool obscured) =
      _$TogglePasswordVisibilityImpl<T>;

  bool get obscured;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TogglePasswordVisibilityImplCopyWith<T, _$TogglePasswordVisibilityImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleRememberMeImplCopyWith<T, $Res> {
  factory _$$ToggleRememberMeImplCopyWith(_$ToggleRememberMeImpl<T> value,
          $Res Function(_$ToggleRememberMeImpl<T>) then) =
      __$$ToggleRememberMeImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool rememberMe});
}

/// @nodoc
class __$$ToggleRememberMeImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$ToggleRememberMeImpl<T>>
    implements _$$ToggleRememberMeImplCopyWith<T, $Res> {
  __$$ToggleRememberMeImplCopyWithImpl(_$ToggleRememberMeImpl<T> _value,
      $Res Function(_$ToggleRememberMeImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rememberMe = null,
  }) {
    return _then(_$ToggleRememberMeImpl<T>(
      null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleRememberMeImpl<T> implements ToggleRememberMe<T> {
  const _$ToggleRememberMeImpl(this.rememberMe);

  @override
  final bool rememberMe;

  @override
  String toString() {
    return 'LoginState<$T>.toggleRememberMe(rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleRememberMeImpl<T> &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rememberMe);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleRememberMeImplCopyWith<T, _$ToggleRememberMeImpl<T>> get copyWith =>
      __$$ToggleRememberMeImplCopyWithImpl<T, _$ToggleRememberMeImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool obscured) togglePasswordVisibility,
    required TResult Function(bool rememberMe) toggleRememberMe,
  }) {
    return toggleRememberMe(rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool obscured)? togglePasswordVisibility,
    TResult? Function(bool rememberMe)? toggleRememberMe,
  }) {
    return toggleRememberMe?.call(rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool obscured)? togglePasswordVisibility,
    TResult Function(bool rememberMe)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (toggleRememberMe != null) {
      return toggleRememberMe(rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(ToggleRememberMe<T> value) toggleRememberMe,
  }) {
    return toggleRememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(ToggleRememberMe<T> value)? toggleRememberMe,
  }) {
    return toggleRememberMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(ToggleRememberMe<T> value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (toggleRememberMe != null) {
      return toggleRememberMe(this);
    }
    return orElse();
  }
}

abstract class ToggleRememberMe<T> implements LoginState<T> {
  const factory ToggleRememberMe(final bool rememberMe) =
      _$ToggleRememberMeImpl<T>;

  bool get rememberMe;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleRememberMeImplCopyWith<T, _$ToggleRememberMeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
