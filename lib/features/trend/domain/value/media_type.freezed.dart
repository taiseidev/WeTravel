// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaType {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaTypeCopyWith<MediaType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaTypeCopyWith<$Res> {
  factory $MediaTypeCopyWith(MediaType value, $Res Function(MediaType) then) =
      _$MediaTypeCopyWithImpl<$Res, MediaType>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$MediaTypeCopyWithImpl<$Res, $Val extends MediaType>
    implements $MediaTypeCopyWith<$Res> {
  _$MediaTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$_MediaTypeCopyWith<$Res> implements $MediaTypeCopyWith<$Res> {
  factory _$$_MediaTypeCopyWith(
          _$_MediaType value, $Res Function(_$_MediaType) then) =
      __$$_MediaTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_MediaTypeCopyWithImpl<$Res>
    extends _$MediaTypeCopyWithImpl<$Res, _$_MediaType>
    implements _$$_MediaTypeCopyWith<$Res> {
  __$$_MediaTypeCopyWithImpl(
      _$_MediaType _value, $Res Function(_$_MediaType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_MediaType(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MediaType implements _MediaType {
  const _$_MediaType({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'MediaType(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaType &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaTypeCopyWith<_$_MediaType> get copyWith =>
      __$$_MediaTypeCopyWithImpl<_$_MediaType>(this, _$identity);
}

abstract class _MediaType implements MediaType {
  const factory _MediaType({required final String value}) = _$_MediaType;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MediaTypeCopyWith<_$_MediaType> get copyWith =>
      throw _privateConstructorUsedError;
}
