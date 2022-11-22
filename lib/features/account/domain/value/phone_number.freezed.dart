// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneNumber {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberCopyWith<PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberCopyWith<$Res> {
  factory $PhoneNumberCopyWith(
          PhoneNumber value, $Res Function(PhoneNumber) then) =
      _$PhoneNumberCopyWithImpl<$Res, PhoneNumber>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res, $Val extends PhoneNumber>
    implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneNumberCopyWith<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  factory _$$_PhoneNumberCopyWith(
          _$_PhoneNumber value, $Res Function(_$_PhoneNumber) then) =
      __$$_PhoneNumberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_PhoneNumberCopyWithImpl<$Res>
    extends _$PhoneNumberCopyWithImpl<$Res, _$_PhoneNumber>
    implements _$$_PhoneNumberCopyWith<$Res> {
  __$$_PhoneNumberCopyWithImpl(
      _$_PhoneNumber _value, $Res Function(_$_PhoneNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_PhoneNumber(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumber implements _PhoneNumber {
  const _$_PhoneNumber({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'PhoneNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumber &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      __$$_PhoneNumberCopyWithImpl<_$_PhoneNumber>(this, _$identity);
}

abstract class _PhoneNumber implements PhoneNumber {
  const factory _PhoneNumber({required final String value}) = _$_PhoneNumber;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
