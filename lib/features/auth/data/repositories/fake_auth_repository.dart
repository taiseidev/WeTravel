import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/interfaces/i_auth_repository.dart';

part 'fake_auth_repository.g.dart';

@riverpod
FakeAuthRepository fakeAuthRepository(FakeAuthRepositoryRef ref) =>
    FakeAuthRepository();

class FakeAuthRepository implements IAuthRepository {
  FakeAuthRepository();

  @override
  Future<void> signIn() async {}
}
