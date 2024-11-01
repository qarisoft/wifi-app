// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderItemsHash() => r'1459fc94ed3b703bf25fd448462ed33785b5f0be';

/// See also [OrderItems].
@ProviderFor(OrderItems)
final orderItemsProvider =
    AsyncNotifierProvider<OrderItems, List<OrderItem>>.internal(
  OrderItems.new,
  name: r'orderItemsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$orderItemsHash,
  dependencies: <ProviderOrFamily>[getProductProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    getProductProvider,
    ...?getProductProvider.allTransitiveDependencies
  },
);

typedef _$OrderItems = AsyncNotifier<List<OrderItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
