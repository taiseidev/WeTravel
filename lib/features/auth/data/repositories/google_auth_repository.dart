import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:we_travel/features/account/data/app_user_repository.dart';
import 'package:we_travel/features/account/domain/app_user.dart';
import 'package:we_travel/features/account/domain/value/app_user_id.dart';
import 'package:we_travel/features/account/domain/value/app_user_name.dart';
import 'package:we_travel/features/account/domain/value/email.dart';
import 'package:we_travel/features/auth/data/repositories/sign_in_repository.dart';

import '../../../../gen/firebase_options_dev.dart';

part 'google_auth_repository.g.dart';

@riverpod
GoogleAuthRepository googleAuthRepository(GoogleAuthRepositoryRef ref) =>
    GoogleAuthRepository(ref);

class GoogleAuthRepository {
  GoogleAuthRepository(this.ref);
  final Ref ref;

  Future<void> signIn() async {
    final signinAccount = await GoogleSignIn(
      clientId: DefaultFirebaseOptions.currentPlatform.iosClientId,
    ).signIn();

    if (signinAccount == null) {
      return;
    }

    final auth = await signinAccount.authentication;
    final credential = GoogleAuthProvider.credential(
      idToken: auth.idToken,
      accessToken: auth.accessToken,
    );

    final uid = await ref.read(signInRepositoryProvider).signIn(credential);

    final appUser = AppUser.initial().copyWith(
      id: AppUserId(value: uid),
      name: AppUserName(value: signinAccount.displayName!),
      mail: Email(value: signinAccount.email),
      imageUrl: signinAccount.photoUrl!,
    );

    await ref.read(appUserRepositoryProvider).setUser(appUser: appUser);
  }
}
