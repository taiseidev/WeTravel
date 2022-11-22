// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_user_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppUserName {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserNameCopyWith<AppUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserNameCopyWith<$Res> {
  factory $AppUserNameCopyWith(
          AppUserName value, $Res Function(AppUserName) then) =
      _$AppUserNameCopyWithImpl<$Res, AppUserName>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AppUserNameCopyWithImpl<$Res, $Val extends AppUserName>
    implements $AppUserNameCopyWith<$Res> {
  _$AppUserNameCopyWithImpl(this._value, this._then);

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
abstract class _$$_AppUserNameCopyWith<$Res>
    implements $AppUserNameCopyWith<$Res> {
  factory _$$_AppUserNameCopyWith(
          _$_AppUserName value, $Res Function(_$_AppUserName) then) =
      __$$_AppUserNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AppUserNameCopyWithImpl<$Res>
    extends _$AppUserNameCopyWithImpl<$Res, _$_AppUserName>
    implements _$$_AppUserNameCopyWith<$Res> {
  __$$_AppUserNameCopyWithImpl(
      _$_AppUserName _value, $Res Function(_$_AppUserName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AppUserName(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppUserName implements _AppUserName {
  const _$_AppUserName({required this.value}) : assert(value.length < 15);

  @override
  final String value;

  @override
  String toString() {
    return 'AppUserName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserName &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserNameCopyWith<_$_AppUserName> get copyWith =>
      __$$_AppUserNameCopyWithImpl<_$_AppUserName>(this, _$identity);
}

abstract class _AppUserName implements AppUserName {
  const factory _AppUserName({required final String value}) = _$_AppUserName;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserNameCopyWith<_$_AppUserName> get copyWith =>
      throw _privateConstructorUsedError;
}
