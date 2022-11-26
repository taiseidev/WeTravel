import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 汎用的に使うauthの置き場所がわからなかったので
/// 一旦ここに置いてます

final authProvider = Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

final userStreamProvider =
    StreamProvider<User?>((ref) => ref.watch(authProvider).authStateChanges());
