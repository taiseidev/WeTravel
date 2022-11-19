import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/apple_auth_repository.dart';
import '../../data/repositories/google_auth_repository.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() {}

  // Googleサインイン
  Future<void> signInWithGoogle() async {
    state = await AsyncValue.guard(() async {
      await ref.read(googleAuthRepositoryProvider).signIn();
    });
  }

  // Appleサインイン
  Future<void> signInWithApple() async {
    state = await AsyncValue.guard(() async {
      await ref.read(appleAuthRepositoryProvider).signIn();
    });
  }
}
