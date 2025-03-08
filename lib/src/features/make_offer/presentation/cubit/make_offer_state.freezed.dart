// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_offer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MakeOfferState {
  MakeOfferStateStatus get status => throw _privateConstructorUsedError;
  int get selectedOffer => throw _privateConstructorUsedError;
  int get selectedOfferIndex => throw _privateConstructorUsedError;

  /// Create a copy of MakeOfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MakeOfferStateCopyWith<MakeOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeOfferStateCopyWith<$Res> {
  factory $MakeOfferStateCopyWith(
          MakeOfferState value, $Res Function(MakeOfferState) then) =
      _$MakeOfferStateCopyWithImpl<$Res, MakeOfferState>;
  @useResult
  $Res call(
      {MakeOfferStateStatus status, int selectedOffer, int selectedOfferIndex});
}

/// @nodoc
class _$MakeOfferStateCopyWithImpl<$Res, $Val extends MakeOfferState>
    implements $MakeOfferStateCopyWith<$Res> {
  _$MakeOfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MakeOfferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedOffer = null,
    Object? selectedOfferIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MakeOfferStateStatus,
      selectedOffer: null == selectedOffer
          ? _value.selectedOffer
          : selectedOffer // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOfferIndex: null == selectedOfferIndex
          ? _value.selectedOfferIndex
          : selectedOfferIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MakeOfferStateImplCopyWith<$Res>
    implements $MakeOfferStateCopyWith<$Res> {
  factory _$$MakeOfferStateImplCopyWith(_$MakeOfferStateImpl value,
          $Res Function(_$MakeOfferStateImpl) then) =
      __$$MakeOfferStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MakeOfferStateStatus status, int selectedOffer, int selectedOfferIndex});
}

/// @nodoc
class __$$MakeOfferStateImplCopyWithImpl<$Res>
    extends _$MakeOfferStateCopyWithImpl<$Res, _$MakeOfferStateImpl>
    implements _$$MakeOfferStateImplCopyWith<$Res> {
  __$$MakeOfferStateImplCopyWithImpl(
      _$MakeOfferStateImpl _value, $Res Function(_$MakeOfferStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeOfferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedOffer = null,
    Object? selectedOfferIndex = null,
  }) {
    return _then(_$MakeOfferStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MakeOfferStateStatus,
      selectedOffer: null == selectedOffer
          ? _value.selectedOffer
          : selectedOffer // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOfferIndex: null == selectedOfferIndex
          ? _value.selectedOfferIndex
          : selectedOfferIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MakeOfferStateImpl implements _MakeOfferState {
  const _$MakeOfferStateImpl(
      {required this.status,
      this.selectedOffer = 0,
      this.selectedOfferIndex = -1});

  @override
  final MakeOfferStateStatus status;
  @override
  @JsonKey()
  final int selectedOffer;
  @override
  @JsonKey()
  final int selectedOfferIndex;

  @override
  String toString() {
    return 'MakeOfferState(status: $status, selectedOffer: $selectedOffer, selectedOfferIndex: $selectedOfferIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeOfferStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedOffer, selectedOffer) ||
                other.selectedOffer == selectedOffer) &&
            (identical(other.selectedOfferIndex, selectedOfferIndex) ||
                other.selectedOfferIndex == selectedOfferIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, selectedOffer, selectedOfferIndex);

  /// Create a copy of MakeOfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeOfferStateImplCopyWith<_$MakeOfferStateImpl> get copyWith =>
      __$$MakeOfferStateImplCopyWithImpl<_$MakeOfferStateImpl>(
          this, _$identity);
}

abstract class _MakeOfferState implements MakeOfferState {
  const factory _MakeOfferState(
      {required final MakeOfferStateStatus status,
      final int selectedOffer,
      final int selectedOfferIndex}) = _$MakeOfferStateImpl;

  @override
  MakeOfferStateStatus get status;
  @override
  int get selectedOffer;
  @override
  int get selectedOfferIndex;

  /// Create a copy of MakeOfferState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeOfferStateImplCopyWith<_$MakeOfferStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
