import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:we_travel/features/auth/data/repositories/sign_in_repository.dart';

import '../../domain/interfaces/i_auth_repository.dart';

part 'apple_auth_repository.g.dart';

@riverpod
AppleAuthRepository appleAuthRepository(AppleAuthRepositoryRef ref) =>
    AppleAuthRepository(ref);

class AppleAuthRepository implements IAuthRepository {
  AppleAuthRepository(this.ref);
  final Ref ref;
  @override
  Future<void> signIn() async {
    final signInAccount = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    final oauthProvider = OAuthProvider('apple.com');
    final credential = oauthProvider.credential(
      idToken: signInAccount.identityToken,
      accessToken: signInAccount.authorizationCode,
    );

    ref.read(signInRepositoryProvider(credential: credential));
  }
}
