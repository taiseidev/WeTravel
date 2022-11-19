import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:we_travel/utils/auth.util.dart';

part 'sign_in_repository.g.dart';

@riverpod
Future<void> signInRepository(
  SignInRepositoryRef ref, {
  required OAuthCredential credential,
}) async {
  await ref.watch(authProvider).signInWithCredential(credential);
}
