import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod/src/framework.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:we_travel/features/auth/data/repositories/sign_in_repository.dart';

import '../../../../gen/firebase_options_dev.dart';
import '../../domain/interfaces/i_auth_repository.dart';

part 'google_auth_repository.g.dart';

@riverpod
GoogleAuthRepository googleAuthRepository(GoogleAuthRepositoryRef ref) =>
    GoogleAuthRepository(ref);

class GoogleAuthRepository implements IAuthRepository {
  GoogleAuthRepository(this.ref);
  final Ref ref;
  @override
  Future<void> signIn() async {
    final platform = DefaultFirebaseOptions.currentPlatform;
    log('プロジェクト名: ${platform.projectId}');
    final signinAccount = await GoogleSignIn(
      clientId: platform.iosClientId,
    ).signIn();

    if (signinAccount == null) {
      return;
    }

    final auth = await signinAccount.authentication;
    final credential = GoogleAuthProvider.credential(
      idToken: auth.idToken,
      accessToken: auth.accessToken,
    );

    ref.read(signInRepositoryProvider(credential: credential));
  }
}