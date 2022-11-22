import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:we_travel/features/account/domain/value/app_user_id.dart';
import 'package:we_travel/features/account/domain/value/app_user_name.dart';
import 'package:we_travel/features/account/domain/value/email.dart';
import 'package:we_travel/features/account/domain/value/phone_number.dart';
import 'package:we_travel/utils/json_converters/timestamp.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

typedef JsonMap = Map<String, dynamic>;

@freezed
class AppUser with _$AppUser {
  factory AppUser({
    @appUserIdConverter required AppUserId id,
    @appUserNameConverter required AppUserName name,
    @emailConverter Email? mail,
    @phoneNumberConverter PhoneNumber? phoneNumber,
    @Default('') String imageUrl,
    @Default('') String deviceToken,
    @timestampConverter DateTime? createdAt,
    @timestampConverter DateTime? updatedAt,
  }) = _AppUser;

  factory AppUser.fromJson(JsonMap json) => _$AppUserFromJson(json);

  factory AppUser.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as JsonMap;
    return AppUser.fromJson(<String, dynamic>{
      ...data,
    });
  }

  factory AppUser.initial() => AppUser(
        id: const AppUserId(value: ''),
        name: const AppUserName(value: ''),
        mail: const Email(value: ''),
        phoneNumber: const PhoneNumber(value: ''),
        imageUrl: '',
        deviceToken: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
