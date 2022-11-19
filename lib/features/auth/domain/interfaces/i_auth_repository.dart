import 'package:hooks_riverpod/hooks_riverpod.dart';

final iAuthRepositoryProvider = Provider.autoDispose<IAuthRepository>(
  (_) => throw UnimplementedError(),
);

abstract class IAuthRepository {
  Future<void> signIn();
}
