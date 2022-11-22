import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:we_travel/utils/auth.util.dart';

part 'sign_in_repository.g.dart';

@riverpod
SignInRepository signInRepository(
  SignInRepositoryRef ref,
) =>
    SignInRepository(ref);

class SignInRepository {
  SignInRepository(this.ref);
  SignInRepositoryRef ref;

  Future<String> signIn(OAuthCredential credential) async {
    return ref
        .watch(authProvider)
        .signInWithCredential(credential)
        .then((value) => value.user!.uid);
  }
}
