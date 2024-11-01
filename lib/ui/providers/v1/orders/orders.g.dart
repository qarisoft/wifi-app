// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ordersReadyHash() => r'7b4df0fbf857c93258c6871f3a5d9492dc380be4';

/// See also [ordersReady].
@ProviderFor(ordersReady)
final ordersReadyProvider = AutoDisposeProvider<List<Order>>.internal(
  ordersReady,
  name: r'ordersReadyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ordersReadyHash,
  dependencies: <ProviderOrFamily>[ordersProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    ordersProvider,
    ...?ordersProvider.allTransitiveDependencies
  },
);

typedef OrdersReadyRef = AutoDisposeProviderRef<List<Order>>;
String _$ordersHash() => r'f0b2a54eb6a7cd46be912862ea925f9af51ce877';

/// See also [Orders].
@ProviderFor(Orders)
final ordersProvider = AsyncNotifierProvider<Orders, List<Order>>.internal(
  Orders.new,
  name: r'ordersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ordersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Orders = AsyncNotifier<List<Order>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
