// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_auth_repository.dart';

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

String $phoneAuthRepositoryHash() =>
    r'cc6448a38630b8d0545e2937abe5087edad7f555';

/// See also [phoneAuthRepository].
final phoneAuthRepositoryProvider = AutoDisposeProvider<PhoneAuthRepository>(
  phoneAuthRepository,
  name: r'phoneAuthRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $phoneAuthRepositoryHash,
);
typedef PhoneAuthRepositoryRef = AutoDisposeProviderRef<PhoneAuthRepository>;
