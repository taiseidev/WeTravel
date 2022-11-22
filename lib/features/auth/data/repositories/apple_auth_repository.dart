import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:we_travel/features/account/data/app_user_repository.dart';
import 'package:we_travel/features/account/domain/app_user.dart';
import 'package:we_travel/features/account/domain/value/app_user_id.dart';
import 'package:we_travel/features/account/domain/value/app_user_name.dart';
import 'package:we_travel/features/account/domain/value/email.dart';
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

    final uid = await ref.read(signInRepositoryProvider).signIn(credential);

    final appUser = AppUser.initial().copyWith(
      id: AppUserId(value: uid),
      name: AppUserName(value: signInAccount.givenName ?? ''),
      mail: Email(value: signInAccount.email ?? ''),
    );

    await ref.read(appUserRepositoryProvider).setUser(appUser: appUser);
  }
}
