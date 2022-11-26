// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      id: appUserIdConverter.fromJson(json['id'] as String),
      name: appUserNameConverter.fromJson(json['name'] as String),
      mail: _$JsonConverterFromJson<String, Email>(
          json['mail'], emailConverter.fromJson),
      phoneNumber: _$JsonConverterFromJson<String, PhoneNumber>(
          json['phoneNumber'], phoneNumberConverter.fromJson),
      imageUrl: json['imageUrl'] as String? ?? '',
      deviceToken: json['deviceToken'] as String? ?? '',
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['createdAt'], timestampConverter.fromJson),
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updatedAt'], timestampConverter.fromJson),
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'id': appUserIdConverter.toJson(instance.id),
      'name': appUserNameConverter.toJson(instance.name),
      'mail': _$JsonConverterToJson<String, Email>(
          instance.mail, emailConverter.toJson),
      'phoneNumber': _$JsonConverterToJson<String, PhoneNumber>(
          instance.phoneNumber, phoneNumberConverter.toJson),
      'imageUrl': instance.imageUrl,
      'deviceToken': instance.deviceToken,
      'createdAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, timestampConverter.toJson),
      'updatedAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, timestampConverter.toJson),
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
