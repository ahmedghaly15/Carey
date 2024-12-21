// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishlistState {
  WishlistStateStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  FetchMyWishlistResponse? get wishlist => throw _privateConstructorUsedError;
  int? get favAffectedItemId => throw _privateConstructorUsedError;

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call(
      {WishlistStateStatus status,
      String? error,
      FetchMyWishlistResponse? wishlist,
      int? favAffectedItemId});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? wishlist = freezed,
    Object? favAffectedItemId = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WishlistStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      wishlist: freezed == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as FetchMyWishlistResponse?,
      favAffectedItemId: freezed == favAffectedItemId
          ? _value.favAffectedItemId
          : favAffectedItemId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistStateImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$WishlistStateImplCopyWith(
          _$WishlistStateImpl value, $Res Function(_$WishlistStateImpl) then) =
      __$$WishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WishlistStateStatus status,
      String? error,
      FetchMyWishlistResponse? wishlist,
      int? favAffectedItemId});
}

/// @nodoc
class __$$WishlistStateImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$WishlistStateImpl>
    implements _$$WishlistStateImplCopyWith<$Res> {
  __$$WishlistStateImplCopyWithImpl(
      _$WishlistStateImpl _value, $Res Function(_$WishlistStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? wishlist = freezed,
    Object? favAffectedItemId = freezed,
  }) {
    return _then(_$WishlistStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WishlistStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      wishlist: freezed == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as FetchMyWishlistResponse?,
      favAffectedItemId: freezed == favAffectedItemId
          ? _value.favAffectedItemId
          : favAffectedItemId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$WishlistStateImpl implements _WishlistState {
  const _$WishlistStateImpl(
      {required this.status,
      this.error,
      this.wishlist,
      this.favAffectedItemId});

  @override
  final WishlistStateStatus status;
  @override
  final String? error;
  @override
  final FetchMyWishlistResponse? wishlist;
  @override
  final int? favAffectedItemId;

  @override
  String toString() {
    return 'WishlistState(status: $status, error: $error, wishlist: $wishlist, favAffectedItemId: $favAffectedItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.wishlist, wishlist) ||
                other.wishlist == wishlist) &&
            (identical(other.favAffectedItemId, favAffectedItemId) ||
                other.favAffectedItemId == favAffectedItemId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, error, wishlist, favAffectedItemId);

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      __$$WishlistStateImplCopyWithImpl<_$WishlistStateImpl>(this, _$identity);
}

abstract class _WishlistState implements WishlistState {
  const factory _WishlistState(
      {required final WishlistStateStatus status,
      final String? error,
      final FetchMyWishlistResponse? wishlist,
      final int? favAffectedItemId}) = _$WishlistStateImpl;

  @override
  WishlistStateStatus get status;
  @override
  String? get error;
  @override
  FetchMyWishlistResponse? get wishlist;
  @override
  int? get favAffectedItemId;

  /// Create a copy of WishlistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
