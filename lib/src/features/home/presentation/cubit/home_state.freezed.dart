// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  HomeStateStatus get status => throw _privateConstructorUsedError;
  int get currentSelectedTopDealBrand => throw _privateConstructorUsedError;
  HomeResponseData? get homeData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get showAllBrands => throw _privateConstructorUsedError;
  FetchSpecialOffersResponse? get specialOffers =>
      throw _privateConstructorUsedError;
  List<Car>? get bestCars => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStateStatus status,
      int currentSelectedTopDealBrand,
      HomeResponseData? homeData,
      String? error,
      bool showAllBrands,
      FetchSpecialOffersResponse? specialOffers,
      List<Car>? bestCars});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentSelectedTopDealBrand = null,
    Object? homeData = freezed,
    Object? error = freezed,
    Object? showAllBrands = null,
    Object? specialOffers = freezed,
    Object? bestCars = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStateStatus,
      currentSelectedTopDealBrand: null == currentSelectedTopDealBrand
          ? _value.currentSelectedTopDealBrand
          : currentSelectedTopDealBrand // ignore: cast_nullable_to_non_nullable
              as int,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeResponseData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      showAllBrands: null == showAllBrands
          ? _value.showAllBrands
          : showAllBrands // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOffers: freezed == specialOffers
          ? _value.specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as FetchSpecialOffersResponse?,
      bestCars: freezed == bestCars
          ? _value.bestCars
          : bestCars // ignore: cast_nullable_to_non_nullable
              as List<Car>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStateStatus status,
      int currentSelectedTopDealBrand,
      HomeResponseData? homeData,
      String? error,
      bool showAllBrands,
      FetchSpecialOffersResponse? specialOffers,
      List<Car>? bestCars});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentSelectedTopDealBrand = null,
    Object? homeData = freezed,
    Object? error = freezed,
    Object? showAllBrands = null,
    Object? specialOffers = freezed,
    Object? bestCars = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStateStatus,
      currentSelectedTopDealBrand: null == currentSelectedTopDealBrand
          ? _value.currentSelectedTopDealBrand
          : currentSelectedTopDealBrand // ignore: cast_nullable_to_non_nullable
              as int,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeResponseData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      showAllBrands: null == showAllBrands
          ? _value.showAllBrands
          : showAllBrands // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOffers: freezed == specialOffers
          ? _value.specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as FetchSpecialOffersResponse?,
      bestCars: freezed == bestCars
          ? _value._bestCars
          : bestCars // ignore: cast_nullable_to_non_nullable
              as List<Car>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.status,
      this.currentSelectedTopDealBrand = 0,
      this.homeData,
      this.error,
      this.showAllBrands = false,
      this.specialOffers,
      final List<Car>? bestCars})
      : _bestCars = bestCars;

  @override
  final HomeStateStatus status;
  @override
  @JsonKey()
  final int currentSelectedTopDealBrand;
  @override
  final HomeResponseData? homeData;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool showAllBrands;
  @override
  final FetchSpecialOffersResponse? specialOffers;
  final List<Car>? _bestCars;
  @override
  List<Car>? get bestCars {
    final value = _bestCars;
    if (value == null) return null;
    if (_bestCars is EqualUnmodifiableListView) return _bestCars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(status: $status, currentSelectedTopDealBrand: $currentSelectedTopDealBrand, homeData: $homeData, error: $error, showAllBrands: $showAllBrands, specialOffers: $specialOffers, bestCars: $bestCars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentSelectedTopDealBrand,
                    currentSelectedTopDealBrand) ||
                other.currentSelectedTopDealBrand ==
                    currentSelectedTopDealBrand) &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.showAllBrands, showAllBrands) ||
                other.showAllBrands == showAllBrands) &&
            (identical(other.specialOffers, specialOffers) ||
                other.specialOffers == specialOffers) &&
            const DeepCollectionEquality().equals(other._bestCars, _bestCars));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentSelectedTopDealBrand,
      homeData,
      error,
      showAllBrands,
      specialOffers,
      const DeepCollectionEquality().hash(_bestCars));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final HomeStateStatus status,
      final int currentSelectedTopDealBrand,
      final HomeResponseData? homeData,
      final String? error,
      final bool showAllBrands,
      final FetchSpecialOffersResponse? specialOffers,
      final List<Car>? bestCars}) = _$HomeStateImpl;

  @override
  HomeStateStatus get status;
  @override
  int get currentSelectedTopDealBrand;
  @override
  HomeResponseData? get homeData;
  @override
  String? get error;
  @override
  bool get showAllBrands;
  @override
  FetchSpecialOffersResponse? get specialOffers;
  @override
  List<Car>? get bestCars;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
