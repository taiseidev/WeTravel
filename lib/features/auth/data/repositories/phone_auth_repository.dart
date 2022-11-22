import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:we_travel/features/account/data/app_user_repository.dart';
import 'package:we_travel/features/account/domain/app_user.dart';
import 'package:we_travel/features/account/domain/value/app_user_id.dart';
import 'package:we_travel/features/account/domain/value/phone_number.dart';
import 'package:we_travel/features/auth/presentation/controllers/auth_controller.dart';

part 'phone_auth_repository.g.dart';

@riverpod
PhoneAuthRepository phoneAuthRepository(PhoneAuthRepositoryRef ref) =>
    PhoneAuthRepository(ref);

class PhoneAuthRepository {
  PhoneAuthRepository(this.ref);
  final Ref ref;

  Future<void> veryPhoneNumber({
    required Function(String verificationId, int? resendToken) callback,
    required String phone,
  }) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+81$phone',
      verificationCompleted: (PhoneAuthCredential credential) {
        // iosの場合は空欄で問題なし
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('電話番号が正しくありません。');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        await callback(verificationId, resendToken ?? 0);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // タイムアウト時の挙動を指定しない場合は空欄でも問題なし
      },
    );
  }

  Future<void> signIn({
    required String verificationId,
    required String smsCode,
  }) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    final uid = await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) => value.user!.uid);

    final appUser = AppUser.initial().copyWith(
      id: AppUserId(value: uid),
      phoneNumber: PhoneNumber(
        value: ref.read(phoneNumberProvider),
      ),
    );

    await ref.read(appUserRepositoryProvider).setUser(appUser: appUser);
  }
}
