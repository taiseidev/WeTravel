// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $signInRepositoryHash() => r'bd9603fd284bca8f8059af6944daa1b374e16a68';

/// See also [signInRepository].
class SignInRepositoryProvider extends AutoDisposeFutureProvider<void> {
  SignInRepositoryProvider({
    required this.credential,
  }) : super(
          (ref) => signInRepository(
            ref,
            credential: credential,
          ),
          from: signInRepositoryProvider,
          name: r'signInRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $signInRepositoryHash,
        );

  final OAuthCredential credential;

  @override
  bool operator ==(Object other) {
    return other is SignInRepositoryProvider && other.credential == credential;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, credential.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef SignInRepositoryRef = AutoDisposeFutureProviderRef<void>;

/// See also [signInRepository].
final signInRepositoryProvider = SignInRepositoryFamily();

class SignInRepositoryFamily extends Family<AsyncValue<void>> {
  SignInRepositoryFamily();

  SignInRepositoryProvider call({
    required OAuthCredential credential,
  }) {
    return SignInRepositoryProvider(
      credential: credential,
    );
  }

  @override
  AutoDisposeFutureProvider<void> getProviderOverride(
    covariant SignInRepositoryProvider provider,
  ) {
    return call(
      credential: provider.credential,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'signInRepositoryProvider';
}
