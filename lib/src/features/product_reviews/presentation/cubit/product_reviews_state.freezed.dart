// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reviews_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductReviewsState {
  ProductReviewsStateStatus get status => throw _privateConstructorUsedError;
  int get selectedRateIndex => throw _privateConstructorUsedError;
  int get bottomSheetSelectedRateIndex => throw _privateConstructorUsedError;
  FetchRatesResponse? get ratesResponse => throw _privateConstructorUsedError;
  FetchRatesResponse? get allRatesResponse =>
      throw _privateConstructorUsedError;
  int? get intendedToFetchCarId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ProductReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductReviewsStateCopyWith<ProductReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReviewsStateCopyWith<$Res> {
  factory $ProductReviewsStateCopyWith(
          ProductReviewsState value, $Res Function(ProductReviewsState) then) =
      _$ProductReviewsStateCopyWithImpl<$Res, ProductReviewsState>;
  @useResult
  $Res call(
      {ProductReviewsStateStatus status,
      int selectedRateIndex,
      int bottomSheetSelectedRateIndex,
      FetchRatesResponse? ratesResponse,
      FetchRatesResponse? allRatesResponse,
      int? intendedToFetchCarId,
      String? error});

  $FetchRatesResponseCopyWith<$Res>? get ratesResponse;
  $FetchRatesResponseCopyWith<$Res>? get allRatesResponse;
}

/// @nodoc
class _$ProductReviewsStateCopyWithImpl<$Res, $Val extends ProductReviewsState>
    implements $ProductReviewsStateCopyWith<$Res> {
  _$ProductReviewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedRateIndex = null,
    Object? bottomSheetSelectedRateIndex = null,
    Object? ratesResponse = freezed,
    Object? allRatesResponse = freezed,
    Object? intendedToFetchCarId = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductReviewsStateStatus,
      selectedRateIndex: null == selectedRateIndex
          ? _value.selectedRateIndex
          : selectedRateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      bottomSheetSelectedRateIndex: null == bottomSheetSelectedRateIndex
          ? _value.bottomSheetSelectedRateIndex
          : bottomSheetSelectedRateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ratesResponse: freezed == ratesResponse
          ? _value.ratesResponse
          : ratesResponse // ignore: cast_nullable_to_non_nullable
              as FetchRatesResponse?,
      allRatesResponse: freezed == allRatesResponse
          ? _value.allRatesResponse
          : allRatesResponse // ignore: cast_nullable_to_non_nullable
              as FetchRatesResponse?,
      intendedToFetchCarId: freezed == intendedToFetchCarId
          ? _value.intendedToFetchCarId
          : intendedToFetchCarId // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProductReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FetchRatesResponseCopyWith<$Res>? get ratesResponse {
    if (_value.ratesResponse == null) {
      return null;
    }

    return $FetchRatesResponseCopyWith<$Res>(_value.ratesResponse!, (value) {
      return _then(_value.copyWith(ratesResponse: value) as $Val);
    });
  }

  /// Create a copy of ProductReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FetchRatesResponseCopyWith<$Res>? get allRatesResponse {
    if (_value.allRatesResponse == null) {
      return null;
    }

    return $FetchRatesResponseCopyWith<$Res>(_value.allRatesResponse!, (value) {
      return _then(_value.copyWith(allRatesResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductReviewsStateImplCopyWith<$Res>
    implements $ProductReviewsStateCopyWith<$Res> {
  factory _$$ProductReviewsStateImplCopyWith(_$ProductReviewsStateImpl value,
          $Res Function(_$ProductReviewsStateImpl) then) =
      __$$ProductReviewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductReviewsStateStatus status,
      int selectedRateIndex,
      int bottomSheetSelectedRateIndex,
      FetchRatesResponse? ratesResponse,
      FetchRatesResponse? allRatesResponse,
      int? intendedToFetchCarId,
      String? error});

  @override
  $FetchRatesResponseCopyWith<$Res>? get ratesResponse;
  @override
  $FetchRatesResponseCopyWith<$Res>? get allRatesResponse;
}

/// @nodoc
class __$$ProductReviewsStateImplCopyWithImpl<$Res>
    extends _$ProductReviewsStateCopyWithImpl<$Res, _$ProductReviewsStateImpl>
    implements _$$ProductReviewsStateImplCopyWith<$Res> {
  __$$ProductReviewsStateImplCopyWithImpl(_$ProductReviewsStateImpl _value,
      $Res Function(_$ProductReviewsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedRateIndex = null,
    Object? bottomSheetSelectedRateIndex = null,
    Object? ratesResponse = freezed,
    Object? allRatesResponse = freezed,
    Object? intendedToFetchCarId = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ProductReviewsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductReviewsStateStatus,
      selectedRateIndex: null == selectedRateIndex
          ? _value.selectedRateIndex
          : selectedRateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      bottomSheetSelectedRateIndex: null == bottomSheetSelectedRateIndex
          ? _value.bottomSheetSelectedRateIndex
          : bottomSheetSelectedRateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ratesResponse: freezed == ratesResponse
          ? _value.ratesResponse
          : ratesResponse // ignore: cast_nullable_to_non_nullable
              as FetchRatesResponse?,
      allRatesResponse: freezed == allRatesResponse
          ? _value.allRatesResponse
          : allRatesResponse // ignore: cast_nullable_to_non_nullable
              as FetchRatesResponse?,
      intendedToFetchCarId: freezed == intendedToFetchCarId
          ? _value.intendedToFetchCarId
          : intendedToFetchCarId // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductReviewsStateImpl implements _ProductReviewsState {
  const _$ProductReviewsStateImpl(
      {required this.status,
      this.selectedRateIndex = 0,
      this.bottomSheetSelectedRateIndex = 0,
      this.ratesResponse,
      this.allRatesResponse,
      this.intendedToFetchCarId,
      this.error});

  @override
  final ProductReviewsStateStatus status;
  @override
  @JsonKey()
  final int selectedRateIndex;
  @override
  @JsonKey()
  final int bottomSheetSelectedRateIndex;
  @override
  final FetchRatesResponse? ratesResponse;
  @override
  final FetchRatesResponse? allRatesResponse;
  @override
  final int? intendedToFetchCarId;
  @override
  final String? error;

  @override
  String toString() {
    return 'ProductReviewsState(status: $status, selectedRateIndex: $selectedRateIndex, bottomSheetSelectedRateIndex: $bottomSheetSelectedRateIndex, ratesResponse: $ratesResponse, allRatesResponse: $allRatesResponse, intendedToFetchCarId: $intendedToFetchCarId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductReviewsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedRateIndex, selectedRateIndex) ||
                other.selectedRateIndex == selectedRateIndex) &&
            (identical(other.bottomSheetSelectedRateIndex,
                    bottomSheetSelectedRateIndex) ||
                other.bottomSheetSelectedRateIndex ==
                    bottomSheetSelectedRateIndex) &&
            (identical(other.ratesResponse, ratesResponse) ||
                other.ratesResponse == ratesResponse) &&
            (identical(other.allRatesResponse, allRatesResponse) ||
                other.allRatesResponse == allRatesResponse) &&
            (identical(other.intendedToFetchCarId, intendedToFetchCarId) ||
                other.intendedToFetchCarId == intendedToFetchCarId) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      selectedRateIndex,
      bottomSheetSelectedRateIndex,
      ratesResponse,
      allRatesResponse,
      intendedToFetchCarId,
      error);

  /// Create a copy of ProductReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductReviewsStateImplCopyWith<_$ProductReviewsStateImpl> get copyWith =>
      __$$ProductReviewsStateImplCopyWithImpl<_$ProductReviewsStateImpl>(
          this, _$identity);
}

abstract class _ProductReviewsState implements ProductReviewsState {
  const factory _ProductReviewsState(
      {required final ProductReviewsStateStatus status,
      final int selectedRateIndex,
      final int bottomSheetSelectedRateIndex,
      final FetchRatesResponse? ratesResponse,
      final FetchRatesResponse? allRatesResponse,
      final int? intendedToFetchCarId,
      final String? error}) = _$ProductReviewsStateImpl;

  @override
  ProductReviewsStateStatus get status;
  @override
  int get selectedRateIndex;
  @override
  int get bottomSheetSelectedRateIndex;
  @override
  FetchRatesResponse? get ratesResponse;
  @override
  FetchRatesResponse? get allRatesResponse;
  @override
  int? get intendedToFetchCarId;
  @override
  String? get error;

  /// Create a copy of ProductReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductReviewsStateImplCopyWith<_$ProductReviewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
