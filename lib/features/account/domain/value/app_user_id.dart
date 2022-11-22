import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_id.freezed.dart';

@freezed
class AppUserId with _$AppUserId {
  @Assert('value.length < 30')
  const factory AppUserId({
    required String value,
  }) = _AppUserId;
}

const appUserIdConverter = AppUserIdConverter();

class AppUserIdConverter implements JsonConverter<AppUserId, String> {
  const AppUserIdConverter();

  @override
  AppUserId fromJson(String value) {
    return AppUserId(value: value);
  }

  @override
  String toJson(AppUserId id) {
    return id.value;
  }
}
