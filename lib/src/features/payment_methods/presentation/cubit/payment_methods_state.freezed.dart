// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_methods_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentMethodsState {
  PaymentMethodsStateStatus get status => throw _privateConstructorUsedError;
  PaymentMethod? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodsStateCopyWith<PaymentMethodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodsStateCopyWith<$Res> {
  factory $PaymentMethodsStateCopyWith(
          PaymentMethodsState value, $Res Function(PaymentMethodsState) then) =
      _$PaymentMethodsStateCopyWithImpl<$Res, PaymentMethodsState>;
  @useResult
  $Res call(
      {PaymentMethodsStateStatus status, PaymentMethod? selectedPaymentMethod});

  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
}

/// @nodoc
class _$PaymentMethodsStateCopyWithImpl<$Res, $Val extends PaymentMethodsState>
    implements $PaymentMethodsStateCopyWith<$Res> {
  _$PaymentMethodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedPaymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentMethodsStateStatus,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
    ) as $Val);
  }

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod {
    if (_value.selectedPaymentMethod == null) {
      return null;
    }

    return $PaymentMethodCopyWith<$Res>(_value.selectedPaymentMethod!, (value) {
      return _then(_value.copyWith(selectedPaymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentMethodsStateImplCopyWith<$Res>
    implements $PaymentMethodsStateCopyWith<$Res> {
  factory _$$PaymentMethodsStateImplCopyWith(_$PaymentMethodsStateImpl value,
          $Res Function(_$PaymentMethodsStateImpl) then) =
      __$$PaymentMethodsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentMethodsStateStatus status, PaymentMethod? selectedPaymentMethod});

  @override
  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
}

/// @nodoc
class __$$PaymentMethodsStateImplCopyWithImpl<$Res>
    extends _$PaymentMethodsStateCopyWithImpl<$Res, _$PaymentMethodsStateImpl>
    implements _$$PaymentMethodsStateImplCopyWith<$Res> {
  __$$PaymentMethodsStateImplCopyWithImpl(_$PaymentMethodsStateImpl _value,
      $Res Function(_$PaymentMethodsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedPaymentMethod = freezed,
  }) {
    return _then(_$PaymentMethodsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentMethodsStateStatus,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
    ));
  }
}

/// @nodoc

class _$PaymentMethodsStateImpl implements _PaymentMethodsState {
  const _$PaymentMethodsStateImpl(
      {required this.status, this.selectedPaymentMethod});

  @override
  final PaymentMethodsStateStatus status;
  @override
  final PaymentMethod? selectedPaymentMethod;

  @override
  String toString() {
    return 'PaymentMethodsState(status: $status, selectedPaymentMethod: $selectedPaymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedPaymentMethod);

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodsStateImplCopyWith<_$PaymentMethodsStateImpl> get copyWith =>
      __$$PaymentMethodsStateImplCopyWithImpl<_$PaymentMethodsStateImpl>(
          this, _$identity);
}

abstract class _PaymentMethodsState implements PaymentMethodsState {
  const factory _PaymentMethodsState(
      {required final PaymentMethodsStateStatus status,
      final PaymentMethod? selectedPaymentMethod}) = _$PaymentMethodsStateImpl;

  @override
  PaymentMethodsStateStatus get status;
  @override
  PaymentMethod? get selectedPaymentMethod;

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodsStateImplCopyWith<_$PaymentMethodsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
