// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchWishlistState {
  FetchWishlistStateStatus get status => throw _privateConstructorUsedError;
  FetchMyWishlistResponse? get wishlist => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of FetchWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchWishlistStateCopyWith<FetchWishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWishlistStateCopyWith<$Res> {
  factory $FetchWishlistStateCopyWith(
          FetchWishlistState value, $Res Function(FetchWishlistState) then) =
      _$FetchWishlistStateCopyWithImpl<$Res, FetchWishlistState>;
  @useResult
  $Res call(
      {FetchWishlistStateStatus status,
      FetchMyWishlistResponse? wishlist,
      String? error});
}

/// @nodoc
class _$FetchWishlistStateCopyWithImpl<$Res, $Val extends FetchWishlistState>
    implements $FetchWishlistStateCopyWith<$Res> {
  _$FetchWishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? wishlist = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchWishlistStateStatus,
      wishlist: freezed == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as FetchMyWishlistResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWishlistStateImplCopyWith<$Res>
    implements $FetchWishlistStateCopyWith<$Res> {
  factory _$$FetchWishlistStateImplCopyWith(_$FetchWishlistStateImpl value,
          $Res Function(_$FetchWishlistStateImpl) then) =
      __$$FetchWishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FetchWishlistStateStatus status,
      FetchMyWishlistResponse? wishlist,
      String? error});
}

/// @nodoc
class __$$FetchWishlistStateImplCopyWithImpl<$Res>
    extends _$FetchWishlistStateCopyWithImpl<$Res, _$FetchWishlistStateImpl>
    implements _$$FetchWishlistStateImplCopyWith<$Res> {
  __$$FetchWishlistStateImplCopyWithImpl(_$FetchWishlistStateImpl _value,
      $Res Function(_$FetchWishlistStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? wishlist = freezed,
    Object? error = freezed,
  }) {
    return _then(_$FetchWishlistStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchWishlistStateStatus,
      wishlist: freezed == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as FetchMyWishlistResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchWishlistStateImpl implements _FetchWishlistState {
  const _$FetchWishlistStateImpl(
      {required this.status, this.wishlist, this.error});

  @override
  final FetchWishlistStateStatus status;
  @override
  final FetchMyWishlistResponse? wishlist;
  @override
  final String? error;

  @override
  String toString() {
    return 'FetchWishlistState(status: $status, wishlist: $wishlist, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWishlistStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.wishlist, wishlist) ||
                other.wishlist == wishlist) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, wishlist, error);

  /// Create a copy of FetchWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWishlistStateImplCopyWith<_$FetchWishlistStateImpl> get copyWith =>
      __$$FetchWishlistStateImplCopyWithImpl<_$FetchWishlistStateImpl>(
          this, _$identity);
}

abstract class _FetchWishlistState implements FetchWishlistState {
  const factory _FetchWishlistState(
      {required final FetchWishlistStateStatus status,
      final FetchMyWishlistResponse? wishlist,
      final String? error}) = _$FetchWishlistStateImpl;

  @override
  FetchWishlistStateStatus get status;
  @override
  FetchMyWishlistResponse? get wishlist;
  @override
  String? get error;

  /// Create a copy of FetchWishlistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchWishlistStateImplCopyWith<_$FetchWishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
