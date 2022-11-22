import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

@freezed
class Email with _$Email {
  const factory Email({
    required String value,
  }) = _Email;
}

const emailConverter = EmailConverter();

class EmailConverter implements JsonConverter<Email, String> {
  const EmailConverter();

  @override
  Email fromJson(String email) {
    final emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
    if (emailValid) {
      return Email(value: email);
    } else {
      throw Exception('メールアドレスが正しくありません');
    }
  }

  @override
  String toJson(Email mail) {
    final emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(mail.value);
    if (emailValid) {
      return mail.value;
    } else {
      throw Exception('メールアドレスが正しくありません');
    }
  }
}
