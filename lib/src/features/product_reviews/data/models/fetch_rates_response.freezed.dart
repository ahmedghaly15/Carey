// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_rates_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchRatesResponse _$FetchRatesResponseFromJson(Map<String, dynamic> json) {
  return _FetchRatesResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchRatesResponse {
  @HiveField(0)
  int get totalItems => throw _privateConstructorUsedError;
  @HiveField(1)
  int get totalPages => throw _privateConstructorUsedError;
  @HiveField(2)
  int get currentPage => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'data')
  List<RateResponseItem> get reviews => throw _privateConstructorUsedError;

  /// Serializes this FetchRatesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FetchRatesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchRatesResponseCopyWith<FetchRatesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRatesResponseCopyWith<$Res> {
  factory $FetchRatesResponseCopyWith(
          FetchRatesResponse value, $Res Function(FetchRatesResponse) then) =
      _$FetchRatesResponseCopyWithImpl<$Res, FetchRatesResponse>;
  @useResult
  $Res call(
      {@HiveField(0) int totalItems,
      @HiveField(1) int totalPages,
      @HiveField(2) int currentPage,
      @HiveField(3) @JsonKey(name: 'data') List<RateResponseItem> reviews});
}

/// @nodoc
class _$FetchRatesResponseCopyWithImpl<$Res, $Val extends FetchRatesResponse>
    implements $FetchRatesResponseCopyWith<$Res> {
  _$FetchRatesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchRatesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<RateResponseItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchRatesResponseImplCopyWith<$Res>
    implements $FetchRatesResponseCopyWith<$Res> {
  factory _$$FetchRatesResponseImplCopyWith(_$FetchRatesResponseImpl value,
          $Res Function(_$FetchRatesResponseImpl) then) =
      __$$FetchRatesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int totalItems,
      @HiveField(1) int totalPages,
      @HiveField(2) int currentPage,
      @HiveField(3) @JsonKey(name: 'data') List<RateResponseItem> reviews});
}

/// @nodoc
class __$$FetchRatesResponseImplCopyWithImpl<$Res>
    extends _$FetchRatesResponseCopyWithImpl<$Res, _$FetchRatesResponseImpl>
    implements _$$FetchRatesResponseImplCopyWith<$Res> {
  __$$FetchRatesResponseImplCopyWithImpl(_$FetchRatesResponseImpl _value,
      $Res Function(_$FetchRatesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchRatesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? reviews = null,
  }) {
    return _then(_$FetchRatesResponseImpl(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<RateResponseItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FetchRatesResponseImpl implements _FetchRatesResponse {
  const _$FetchRatesResponseImpl(
      {@HiveField(0) required this.totalItems,
      @HiveField(1) required this.totalPages,
      @HiveField(2) required this.currentPage,
      @HiveField(3)
      @JsonKey(name: 'data')
      required final List<RateResponseItem> reviews})
      : _reviews = reviews;

  factory _$FetchRatesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchRatesResponseImplFromJson(json);

  @override
  @HiveField(0)
  final int totalItems;
  @override
  @HiveField(1)
  final int totalPages;
  @override
  @HiveField(2)
  final int currentPage;
  final List<RateResponseItem> _reviews;
  @override
  @HiveField(3)
  @JsonKey(name: 'data')
  List<RateResponseItem> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'FetchRatesResponse(totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRatesResponseImpl &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems, totalPages,
      currentPage, const DeepCollectionEquality().hash(_reviews));

  /// Create a copy of FetchRatesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRatesResponseImplCopyWith<_$FetchRatesResponseImpl> get copyWith =>
      __$$FetchRatesResponseImplCopyWithImpl<_$FetchRatesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchRatesResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchRatesResponse implements FetchRatesResponse {
  const factory _FetchRatesResponse(
          {@HiveField(0) required final int totalItems,
          @HiveField(1) required final int totalPages,
          @HiveField(2) required final int currentPage,
          @HiveField(3)
          @JsonKey(name: 'data')
          required final List<RateResponseItem> reviews}) =
      _$FetchRatesResponseImpl;

  factory _FetchRatesResponse.fromJson(Map<String, dynamic> json) =
      _$FetchRatesResponseImpl.fromJson;

  @override
  @HiveField(0)
  int get totalItems;
  @override
  @HiveField(1)
  int get totalPages;
  @override
  @HiveField(2)
  int get currentPage;
  @override
  @HiveField(3)
  @JsonKey(name: 'data')
  List<RateResponseItem> get reviews;

  /// Create a copy of FetchRatesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchRatesResponseImplCopyWith<_$FetchRatesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RateResponseItem _$RateResponseItemFromJson(Map<String, dynamic> json) {
  return _RateResponseItem.fromJson(json);
}

/// @nodoc
mixin _$RateResponseItem {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get rate => throw _privateConstructorUsedError;
  @HiveField(2)
  String get comment => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  CareyUser get user => throw _privateConstructorUsedError;
  @HiveField(5)
  List<RateReact> get reacts => throw _privateConstructorUsedError;

  /// Serializes this RateResponseItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RateResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateResponseItemCopyWith<RateResponseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateResponseItemCopyWith<$Res> {
  factory $RateResponseItemCopyWith(
          RateResponseItem value, $Res Function(RateResponseItem) then) =
      _$RateResponseItemCopyWithImpl<$Res, RateResponseItem>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int? rate,
      @HiveField(2) String comment,
      @HiveField(3) String? createdAt,
      @HiveField(4) CareyUser user,
      @HiveField(5) List<RateReact> reacts});

  $CareyUserCopyWith<$Res> get user;
}

/// @nodoc
class _$RateResponseItemCopyWithImpl<$Res, $Val extends RateResponseItem>
    implements $RateResponseItemCopyWith<$Res> {
  _$RateResponseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = freezed,
    Object? comment = null,
    Object? createdAt = freezed,
    Object? user = null,
    Object? reacts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CareyUser,
      reacts: null == reacts
          ? _value.reacts
          : reacts // ignore: cast_nullable_to_non_nullable
              as List<RateReact>,
    ) as $Val);
  }

  /// Create a copy of RateResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareyUserCopyWith<$Res> get user {
    return $CareyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RateResponseItemImplCopyWith<$Res>
    implements $RateResponseItemCopyWith<$Res> {
  factory _$$RateResponseItemImplCopyWith(_$RateResponseItemImpl value,
          $Res Function(_$RateResponseItemImpl) then) =
      __$$RateResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int? rate,
      @HiveField(2) String comment,
      @HiveField(3) String? createdAt,
      @HiveField(4) CareyUser user,
      @HiveField(5) List<RateReact> reacts});

  @override
  $CareyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RateResponseItemImplCopyWithImpl<$Res>
    extends _$RateResponseItemCopyWithImpl<$Res, _$RateResponseItemImpl>
    implements _$$RateResponseItemImplCopyWith<$Res> {
  __$$RateResponseItemImplCopyWithImpl(_$RateResponseItemImpl _value,
      $Res Function(_$RateResponseItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = freezed,
    Object? comment = null,
    Object? createdAt = freezed,
    Object? user = null,
    Object? reacts = null,
  }) {
    return _then(_$RateResponseItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CareyUser,
      reacts: null == reacts
          ? _value._reacts
          : reacts // ignore: cast_nullable_to_non_nullable
              as List<RateReact>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RateResponseItemImpl implements _RateResponseItem {
  const _$RateResponseItemImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) this.rate,
      @HiveField(2) required this.comment,
      @HiveField(3) this.createdAt,
      @HiveField(4) required this.user,
      @HiveField(5) required final List<RateReact> reacts})
      : _reacts = reacts;

  factory _$RateResponseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateResponseItemImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final int? rate;
  @override
  @HiveField(2)
  final String comment;
  @override
  @HiveField(3)
  final String? createdAt;
  @override
  @HiveField(4)
  final CareyUser user;
  final List<RateReact> _reacts;
  @override
  @HiveField(5)
  List<RateReact> get reacts {
    if (_reacts is EqualUnmodifiableListView) return _reacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reacts);
  }

  @override
  String toString() {
    return 'RateResponseItem(id: $id, rate: $rate, comment: $comment, createdAt: $createdAt, user: $user, reacts: $reacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateResponseItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._reacts, _reacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, rate, comment, createdAt,
      user, const DeepCollectionEquality().hash(_reacts));

  /// Create a copy of RateResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateResponseItemImplCopyWith<_$RateResponseItemImpl> get copyWith =>
      __$$RateResponseItemImplCopyWithImpl<_$RateResponseItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateResponseItemImplToJson(
      this,
    );
  }
}

abstract class _RateResponseItem implements RateResponseItem {
  const factory _RateResponseItem(
          {@HiveField(0) required final int id,
          @HiveField(1) final int? rate,
          @HiveField(2) required final String comment,
          @HiveField(3) final String? createdAt,
          @HiveField(4) required final CareyUser user,
          @HiveField(5) required final List<RateReact> reacts}) =
      _$RateResponseItemImpl;

  factory _RateResponseItem.fromJson(Map<String, dynamic> json) =
      _$RateResponseItemImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  int? get rate;
  @override
  @HiveField(2)
  String get comment;
  @override
  @HiveField(3)
  String? get createdAt;
  @override
  @HiveField(4)
  CareyUser get user;
  @override
  @HiveField(5)
  List<RateReact> get reacts;

  /// Create a copy of RateResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateResponseItemImplCopyWith<_$RateResponseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
