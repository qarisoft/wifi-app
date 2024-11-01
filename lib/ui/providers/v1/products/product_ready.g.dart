// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_ready.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsReadyHash() => r'7cca1d5ab68d4023e34f39afbbc1f1e96d5fbf50';

/// See also [productsReady].
@ProviderFor(productsReady)
final productsReadyProvider = Provider<List<Product>>.internal(
  productsReady,
  name: r'productsReadyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productsReadyHash,
  dependencies: <ProviderOrFamily>[productsProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    productsProvider,
    ...?productsProvider.allTransitiveDependencies
  },
);

typedef ProductsReadyRef = ProviderRef<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
