import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/apple_auth_repository.dart';
import '../../data/repositories/google_auth_repository.dart';
import '../../data/repositories/phone_auth_repository.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() {}

  // Googleアカウントで登録
  Future<void> signInWithGoogle() async {
    state = await AsyncValue.guard(() async {
      await ref.read(googleAuthRepositoryProvider).signIn();
    });
  }

  // Appleアカウントで登録
  Future<void> signInWithApple() async {
    state = await AsyncValue.guard(() async {
      await ref.read(appleAuthRepositoryProvider).signIn();
    });
  }

  // 電話番号（ios）で登録
  Future<void> signInWithPhoneNumber({
    required String smsCode,
  }) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: ref.read(verificationIdProvider),
      smsCode: smsCode,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // 電話番号認証
  Future<void> verifyPhoneNumber({
    required String number,
  }) async {
    state = await AsyncValue.guard(
      () async {
        await ref.read(phoneAuthRepositoryProvider).signIn(
              phone: number,
              callback: (String verificationId, int? resendToken) async {
                ref
                    .read(verificationIdProvider.notifier)
                    .update((state) => state = verificationId);
              },
            );
      },
    );
  }
}

// 認証ID一時保存用
final verificationIdProvider = StateProvider<String>((_) => '');

// smsCode一時保存用
final smsCodeProvider = StateProvider<String>((_) => '');

// 電話番号一時保存用
final phoneNumberProvider = StateProvider<String>((_) => '');
