// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_user_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppUserId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserIdCopyWith<AppUserId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserIdCopyWith<$Res> {
  factory $AppUserIdCopyWith(AppUserId value, $Res Function(AppUserId) then) =
      _$AppUserIdCopyWithImpl<$Res, AppUserId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AppUserIdCopyWithImpl<$Res, $Val extends AppUserId>
    implements $AppUserIdCopyWith<$Res> {
  _$AppUserIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_AppUserIdCopyWith<$Res> implements $AppUserIdCopyWith<$Res> {
  factory _$$_AppUserIdCopyWith(
          _$_AppUserId value, $Res Function(_$_AppUserId) then) =
      __$$_AppUserIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AppUserIdCopyWithImpl<$Res>
    extends _$AppUserIdCopyWithImpl<$Res, _$_AppUserId>
    implements _$$_AppUserIdCopyWith<$Res> {
  __$$_AppUserIdCopyWithImpl(
      _$_AppUserId _value, $Res Function(_$_AppUserId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AppUserId(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppUserId implements _AppUserId {
  const _$_AppUserId({required this.value}) : assert(value.length < 50);

  @override
  final String value;

  @override
  String toString() {
    return 'AppUserId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserIdCopyWith<_$_AppUserId> get copyWith =>
      __$$_AppUserIdCopyWithImpl<_$_AppUserId>(this, _$identity);
}

abstract class _AppUserId implements AppUserId {
  const factory _AppUserId({required final String value}) = _$_AppUserId;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserIdCopyWith<_$_AppUserId> get copyWith =>
      throw _privateConstructorUsedError;
}
