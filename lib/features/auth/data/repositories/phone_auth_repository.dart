import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'phone_auth_repository.g.dart';

@riverpod
PhoneAuthRepository phoneAuthRepository(PhoneAuthRepositoryRef ref) =>
    PhoneAuthRepository(ref);

class PhoneAuthRepository {
  PhoneAuthRepository(this.ref);
  final Ref ref;

  Future<void> signIn({
    required Function(String verificationId, int? resendToken) callback,
    required String phone,
  }) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+81$phone',
      verificationCompleted: (PhoneAuthCredential credential) {
        // iosの場合は空欄で問題なし
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e);
        if (e.code == 'invalid-phone-number') {
          print('電話番号が正しくありません。');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        await callback(verificationId, resendToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // タイムアウト時の挙動を指定しない場合は空欄でも問題なし
      },
    );
  }
}
