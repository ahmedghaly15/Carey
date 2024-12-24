// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordState {
  ForgotPasswordStateStatus get status => throw _privateConstructorUsedError;
  int get selectedContactDetailsIndex => throw _privateConstructorUsedError;
  List<ContactDetails>? get contactDetails =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {ForgotPasswordStateStatus status,
      int selectedContactDetailsIndex,
      List<ContactDetails>? contactDetails,
      String? error});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedContactDetailsIndex = null,
    Object? contactDetails = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStateStatus,
      selectedContactDetailsIndex: null == selectedContactDetailsIndex
          ? _value.selectedContactDetailsIndex
          : selectedContactDetailsIndex // ignore: cast_nullable_to_non_nullable
              as int,
      contactDetails: freezed == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as List<ContactDetails>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ForgotPasswordStateStatus status,
      int selectedContactDetailsIndex,
      List<ContactDetails>? contactDetails,
      String? error});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedContactDetailsIndex = null,
    Object? contactDetails = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStateStatus,
      selectedContactDetailsIndex: null == selectedContactDetailsIndex
          ? _value.selectedContactDetailsIndex
          : selectedContactDetailsIndex // ignore: cast_nullable_to_non_nullable
              as int,
      contactDetails: freezed == contactDetails
          ? _value._contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as List<ContactDetails>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {required this.status,
      this.selectedContactDetailsIndex = 0,
      final List<ContactDetails>? contactDetails,
      this.error})
      : _contactDetails = contactDetails;

  @override
  final ForgotPasswordStateStatus status;
  @override
  @JsonKey()
  final int selectedContactDetailsIndex;
  final List<ContactDetails>? _contactDetails;
  @override
  List<ContactDetails>? get contactDetails {
    final value = _contactDetails;
    if (value == null) return null;
    if (_contactDetails is EqualUnmodifiableListView) return _contactDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'ForgotPasswordState(status: $status, selectedContactDetailsIndex: $selectedContactDetailsIndex, contactDetails: $contactDetails, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedContactDetailsIndex,
                    selectedContactDetailsIndex) ||
                other.selectedContactDetailsIndex ==
                    selectedContactDetailsIndex) &&
            const DeepCollectionEquality()
                .equals(other._contactDetails, _contactDetails) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      selectedContactDetailsIndex,
      const DeepCollectionEquality().hash(_contactDetails),
      error);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required final ForgotPasswordStateStatus status,
      final int selectedContactDetailsIndex,
      final List<ContactDetails>? contactDetails,
      final String? error}) = _$ForgotPasswordStateImpl;

  @override
  ForgotPasswordStateStatus get status;
  @override
  int get selectedContactDetailsIndex;
  @override
  List<ContactDetails>? get contactDetails;
  @override
  String? get error;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
