// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'go_router.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginAttribute {
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginAttributeCopyWith<LoginAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginAttributeCopyWith<$Res> {
  factory $LoginAttributeCopyWith(
          LoginAttribute value, $Res Function(LoginAttribute) then) =
      _$LoginAttributeCopyWithImpl<$Res, LoginAttribute>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$LoginAttributeCopyWithImpl<$Res, $Val extends LoginAttribute>
    implements $LoginAttributeCopyWith<$Res> {
  _$LoginAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginAttributeCopyWith<$Res>
    implements $LoginAttributeCopyWith<$Res> {
  factory _$$_LoginAttributeCopyWith(
          _$_LoginAttribute value, $Res Function(_$_LoginAttribute) then) =
      __$$_LoginAttributeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_LoginAttributeCopyWithImpl<$Res>
    extends _$LoginAttributeCopyWithImpl<$Res, _$_LoginAttribute>
    implements _$$_LoginAttributeCopyWith<$Res> {
  __$$_LoginAttributeCopyWithImpl(
      _$_LoginAttribute _value, $Res Function(_$_LoginAttribute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_LoginAttribute(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginAttribute implements _LoginAttribute {
  const _$_LoginAttribute({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'LoginAttribute(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginAttribute &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginAttributeCopyWith<_$_LoginAttribute> get copyWith =>
      __$$_LoginAttributeCopyWithImpl<_$_LoginAttribute>(this, _$identity);
}

abstract class _LoginAttribute implements LoginAttribute {
  const factory _LoginAttribute({required final String userId}) =
      _$_LoginAttribute;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_LoginAttributeCopyWith<_$_LoginAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}
