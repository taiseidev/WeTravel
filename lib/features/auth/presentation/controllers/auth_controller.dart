import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:we_travel/features/auth/data/repositories/google_auth_repository.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() {}

  Future<void> signInWithGoogle() async {
    state = await AsyncValue.guard(() async {
      await ref.read(googleAuthRepositoryProvider).signIn();
    });
  }
}
