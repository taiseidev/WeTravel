// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  @AppUserIdConverter()
  AppUserId get id => throw _privateConstructorUsedError;
  @AppUserNameConverter()
  AppUserName get name => throw _privateConstructorUsedError;
  @EmailConverter()
  Email? get mail => throw _privateConstructorUsedError;
  @PhoneNumberConverter()
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get deviceToken => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {@AppUserIdConverter() AppUserId id,
      @AppUserNameConverter() AppUserName name,
      @EmailConverter() Email? mail,
      @PhoneNumberConverter() PhoneNumber? phoneNumber,
      String imageUrl,
      String deviceToken,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $AppUserIdCopyWith<$Res> get id;
  $AppUserNameCopyWith<$Res> get name;
  $EmailCopyWith<$Res>? get mail;
  $PhoneNumberCopyWith<$Res>? get phoneNumber;
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mail = freezed,
    Object? phoneNumber = freezed,
    Object? imageUrl = null,
    Object? deviceToken = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AppUserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as AppUserName,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as Email?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserIdCopyWith<$Res> get id {
    return $AppUserIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserNameCopyWith<$Res> get name {
    return $AppUserNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailCopyWith<$Res>? get mail {
    if (_value.mail == null) {
      return null;
    }

    return $EmailCopyWith<$Res>(_value.mail!, (value) {
      return _then(_value.copyWith(mail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberCopyWith<$Res>? get phoneNumber {
    if (_value.phoneNumber == null) {
      return null;
    }

    return $PhoneNumberCopyWith<$Res>(_value.phoneNumber!, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@AppUserIdConverter() AppUserId id,
      @AppUserNameConverter() AppUserName name,
      @EmailConverter() Email? mail,
      @PhoneNumberConverter() PhoneNumber? phoneNumber,
      String imageUrl,
      String deviceToken,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $AppUserIdCopyWith<$Res> get id;
  @override
  $AppUserNameCopyWith<$Res> get name;
  @override
  $EmailCopyWith<$Res>? get mail;
  @override
  $PhoneNumberCopyWith<$Res>? get phoneNumber;
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$_AppUser>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mail = freezed,
    Object? phoneNumber = freezed,
    Object? imageUrl = null,
    Object? deviceToken = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_AppUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AppUserId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as AppUserName,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as Email?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser implements _AppUser {
  _$_AppUser(
      {@AppUserIdConverter() required this.id,
      @AppUserNameConverter() required this.name,
      @EmailConverter() this.mail,
      @PhoneNumberConverter() this.phoneNumber,
      this.imageUrl = '',
      this.deviceToken = '',
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  @AppUserIdConverter()
  final AppUserId id;
  @override
  @AppUserNameConverter()
  final AppUserName name;
  @override
  @EmailConverter()
  final Email? mail;
  @override
  @PhoneNumberConverter()
  final PhoneNumber? phoneNumber;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String deviceToken;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AppUser(id: $id, name: $name, mail: $mail, phoneNumber: $phoneNumber, imageUrl: $imageUrl, deviceToken: $deviceToken, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mail, phoneNumber,
      imageUrl, deviceToken, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  factory _AppUser(
      {@AppUserIdConverter() required final AppUserId id,
      @AppUserNameConverter() required final AppUserName name,
      @EmailConverter() final Email? mail,
      @PhoneNumberConverter() final PhoneNumber? phoneNumber,
      final String imageUrl,
      final String deviceToken,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  @AppUserIdConverter()
  AppUserId get id;
  @override
  @AppUserNameConverter()
  AppUserName get name;
  @override
  @EmailConverter()
  Email? get mail;
  @override
  @PhoneNumberConverter()
  PhoneNumber? get phoneNumber;
  @override
  String get imageUrl;
  @override
  String get deviceToken;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
