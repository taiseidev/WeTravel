import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number.freezed.dart';

@freezed
class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    required String value,
  }) = _PhoneNumber;
}

const phoneNumberConverter = PhoneNumberConverter();

class PhoneNumberConverter implements JsonConverter<PhoneNumber, String> {
  const PhoneNumberConverter();

  @override
  PhoneNumber fromJson(String phoneNumber) {
    final phoneNumberValid = RegExp(
      r'^[0-9a-zA-Z]{6}$',
    ).hasMatch(phoneNumber);
    if (phoneNumberValid) {
      return PhoneNumber(value: phoneNumber);
    } else {
      throw Exception('電話番号が正しくありません');
    }
  }

  @override
  String toJson(PhoneNumber number) {
    return number.value;
  }
}
