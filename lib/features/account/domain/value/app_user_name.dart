import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_name.freezed.dart';

@freezed
class AppUserName with _$AppUserName {
  @Assert('value.length < 15')
  const factory AppUserName({
    required String value,
  }) = _AppUserName;
}

const appUserNameConverter = AppUserNameConverter();

class AppUserNameConverter implements JsonConverter<AppUserName, String> {
  const AppUserNameConverter();

  @override
  AppUserName fromJson(String value) {
    return AppUserName(value: value);
  }

  @override
  String toJson(AppUserName id) {
    return id.value;
  }
}
