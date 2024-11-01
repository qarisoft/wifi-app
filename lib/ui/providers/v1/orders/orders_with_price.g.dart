// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_with_price.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderWithPriceHash() => r'a2a53bc2a1691fe171da86c6470cf6f7013bc198';

/// See also [orderWithPrice].
@ProviderFor(orderWithPrice)
final orderWithPriceProvider = AutoDisposeProvider<List<Order>>.internal(
  orderWithPrice,
  name: r'orderWithPriceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$orderWithPriceHash,
  dependencies: <ProviderOrFamily>[ordersProvider, orderItemsProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    ordersProvider,
    ...?ordersProvider.allTransitiveDependencies,
    orderItemsProvider,
    ...?orderItemsProvider.allTransitiveDependencies
  },
);

typedef OrderWithPriceRef = AutoDisposeProviderRef<List<Order>>;
String _$orderWithPriceAndCostHash() =>
    r'eacf9ab34e10b8d9bd8b441ce2e6ea07fc5a40c5';

/// See also [orderWithPriceAndCost].
@ProviderFor(orderWithPriceAndCost)
final orderWithPriceAndCostProvider = AutoDisposeProvider<int>.internal(
  orderWithPriceAndCost,
  name: r'orderWithPriceAndCostProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$orderWithPriceAndCostHash,
  dependencies: <ProviderOrFamily>[
    ordersProvider,
    orderItemsProvider,
    productsReadyProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    ordersProvider,
    ...?ordersProvider.allTransitiveDependencies,
    orderItemsProvider,
    ...?orderItemsProvider.allTransitiveDependencies,
    productsReadyProvider,
    ...?productsReadyProvider.allTransitiveDependencies
  },
);

typedef OrderWithPriceAndCostRef = AutoDisposeProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
