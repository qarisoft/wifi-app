// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customersReadyHash() => r'c4af3f431d4754682fb46707b3dbb26675c4486b';

/// See also [customersReady].
@ProviderFor(customersReady)
final customersReadyProvider = AutoDisposeProvider<List<Customer>>.internal(
  customersReady,
  name: r'customersReadyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customersReadyHash,
  dependencies: <ProviderOrFamily>[customersProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    customersProvider,
    ...?customersProvider.allTransitiveDependencies
  },
);

typedef CustomersReadyRef = AutoDisposeProviderRef<List<Customer>>;
String _$customersHash() => r'db2b08574579c54a6712c848abd3f707766930e0';

/// See also [Customers].
@ProviderFor(Customers)
final customersProvider =
    AsyncNotifierProvider<Customers, List<Customer>>.internal(
  Customers.new,
  name: r'customersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$customersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Customers = AsyncNotifier<List<Customer>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
