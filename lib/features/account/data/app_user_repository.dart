import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:we_travel/features/account/domain/app_user.dart';
import 'package:we_travel/utils/flutter_refs.dart';

part 'app_user_repository.g.dart';

@riverpod
AppUserRepository appUserRepository(AppUserRepositoryRef ref) =>
    AppUserRepository(ref);

class AppUserRepository {
  AppUserRepository(this.ref);
  final Ref ref;

  Future<void> setUser({required AppUser appUser}) async {
    await appUserRef(userId: appUser.id.value).set(
      appUser,
      SetOptions(merge: true),
    );
  }
}
