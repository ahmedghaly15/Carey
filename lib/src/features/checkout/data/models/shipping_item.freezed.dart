// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShippingItem {
  String get title => throw _privateConstructorUsedError;
  String? get subTitleText => throw _privateConstructorUsedError;
  Widget? get subTitleWidget => throw _privateConstructorUsedError;
  String? get imgPath => throw _privateConstructorUsedError;
  bool get hasDefaultBadge => throw _privateConstructorUsedError;

  /// Create a copy of ShippingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingItemCopyWith<ShippingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingItemCopyWith<$Res> {
  factory $ShippingItemCopyWith(
          ShippingItem value, $Res Function(ShippingItem) then) =
      _$ShippingItemCopyWithImpl<$Res, ShippingItem>;
  @useResult
  $Res call(
      {String title,
      String? subTitleText,
      Widget? subTitleWidget,
      String? imgPath,
      bool hasDefaultBadge});
}

/// @nodoc
class _$ShippingItemCopyWithImpl<$Res, $Val extends ShippingItem>
    implements $ShippingItemCopyWith<$Res> {
  _$ShippingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitleText = freezed,
    Object? subTitleWidget = freezed,
    Object? imgPath = freezed,
    Object? hasDefaultBadge = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitleText: freezed == subTitleText
          ? _value.subTitleText
          : subTitleText // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitleWidget: freezed == subTitleWidget
          ? _value.subTitleWidget
          : subTitleWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      hasDefaultBadge: null == hasDefaultBadge
          ? _value.hasDefaultBadge
          : hasDefaultBadge // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingItemImplCopyWith<$Res>
    implements $ShippingItemCopyWith<$Res> {
  factory _$$ShippingItemImplCopyWith(
          _$ShippingItemImpl value, $Res Function(_$ShippingItemImpl) then) =
      __$$ShippingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? subTitleText,
      Widget? subTitleWidget,
      String? imgPath,
      bool hasDefaultBadge});
}

/// @nodoc
class __$$ShippingItemImplCopyWithImpl<$Res>
    extends _$ShippingItemCopyWithImpl<$Res, _$ShippingItemImpl>
    implements _$$ShippingItemImplCopyWith<$Res> {
  __$$ShippingItemImplCopyWithImpl(
      _$ShippingItemImpl _value, $Res Function(_$ShippingItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitleText = freezed,
    Object? subTitleWidget = freezed,
    Object? imgPath = freezed,
    Object? hasDefaultBadge = null,
  }) {
    return _then(_$ShippingItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitleText: freezed == subTitleText
          ? _value.subTitleText
          : subTitleText // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitleWidget: freezed == subTitleWidget
          ? _value.subTitleWidget
          : subTitleWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      hasDefaultBadge: null == hasDefaultBadge
          ? _value.hasDefaultBadge
          : hasDefaultBadge // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShippingItemImpl implements _ShippingItem {
  const _$ShippingItemImpl(
      {required this.title,
      this.subTitleText,
      this.subTitleWidget,
      this.imgPath,
      this.hasDefaultBadge = false});

  @override
  final String title;
  @override
  final String? subTitleText;
  @override
  final Widget? subTitleWidget;
  @override
  final String? imgPath;
  @override
  @JsonKey()
  final bool hasDefaultBadge;

  @override
  String toString() {
    return 'ShippingItem(title: $title, subTitleText: $subTitleText, subTitleWidget: $subTitleWidget, imgPath: $imgPath, hasDefaultBadge: $hasDefaultBadge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitleText, subTitleText) ||
                other.subTitleText == subTitleText) &&
            (identical(other.subTitleWidget, subTitleWidget) ||
                other.subTitleWidget == subTitleWidget) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.hasDefaultBadge, hasDefaultBadge) ||
                other.hasDefaultBadge == hasDefaultBadge));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subTitleText,
      subTitleWidget, imgPath, hasDefaultBadge);

  /// Create a copy of ShippingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingItemImplCopyWith<_$ShippingItemImpl> get copyWith =>
      __$$ShippingItemImplCopyWithImpl<_$ShippingItemImpl>(this, _$identity);
}

abstract class _ShippingItem implements ShippingItem {
  const factory _ShippingItem(
      {required final String title,
      final String? subTitleText,
      final Widget? subTitleWidget,
      final String? imgPath,
      final bool hasDefaultBadge}) = _$ShippingItemImpl;

  @override
  String get title;
  @override
  String? get subTitleText;
  @override
  Widget? get subTitleWidget;
  @override
  String? get imgPath;
  @override
  bool get hasDefaultBadge;

  /// Create a copy of ShippingItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingItemImplCopyWith<_$ShippingItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
