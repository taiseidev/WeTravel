// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      id: const AppUserIdConverter().fromJson(json['id'] as String),
      name: const AppUserNameConverter().fromJson(json['name'] as String),
      mail: _$JsonConverterFromJson<String, Email>(
        json['mail'],
        const EmailConverter().fromJson,
      ),
      phoneNumber: _$JsonConverterFromJson<String, PhoneNumber>(
        json['phoneNumber'],
        const PhoneNumberConverter().fromJson,
      ),
      imageUrl: json['imageUrl'] as String? ?? '',
      deviceToken: json['deviceToken'] as String? ?? '',
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
        json['createdAt'],
        const TimestampConverter().fromJson,
      ),
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
        json['updatedAt'],
        const TimestampConverter().fromJson,
      ),
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'id': const AppUserIdConverter().toJson(instance.id),
      'name': const AppUserNameConverter().toJson(instance.name),
      'mail': _$JsonConverterToJson<String, Email>(
        instance.mail,
        const EmailConverter().toJson,
      ),
      'phoneNumber': _$JsonConverterToJson<String, PhoneNumber>(
        instance.phoneNumber,
        const PhoneNumberConverter().toJson,
      ),
      'imageUrl': instance.imageUrl,
      'deviceToken': instance.deviceToken,
      'createdAt': _$JsonConverterToJson<Timestamp, DateTime>(
        instance.createdAt,
        const TimestampConverter().toJson,
      ),
      'updatedAt': _$JsonConverterToJson<Timestamp, DateTime>(
        instance.updatedAt,
        const TimestampConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
