// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_order_items.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderOrderItemsHash() => r'c29bd600ca036864b82a790d68bb295bafaeec6e';

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

/// See also [orderOrderItems].
@ProviderFor(orderOrderItems)
const orderOrderItemsProvider = OrderOrderItemsFamily();

/// See also [orderOrderItems].
class OrderOrderItemsFamily extends Family<List<OrderItem>> {
  /// See also [orderOrderItems].
  const OrderOrderItemsFamily();

  /// See also [orderOrderItems].
  OrderOrderItemsProvider call(
    int orderId,
  ) {
    return OrderOrderItemsProvider(
      orderId,
    );
  }

  @override
  OrderOrderItemsProvider getProviderOverride(
    covariant OrderOrderItemsProvider provider,
  ) {
    return call(
      provider.orderId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    orderItemsReadyProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    orderItemsReadyProvider,
    ...?orderItemsReadyProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'orderOrderItemsProvider';
}

/// See also [orderOrderItems].
class OrderOrderItemsProvider extends AutoDisposeProvider<List<OrderItem>> {
  /// See also [orderOrderItems].
  OrderOrderItemsProvider(
    int orderId,
  ) : this._internal(
          (ref) => orderOrderItems(
            ref as OrderOrderItemsRef,
            orderId,
          ),
          from: orderOrderItemsProvider,
          name: r'orderOrderItemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderOrderItemsHash,
          dependencies: OrderOrderItemsFamily._dependencies,
          allTransitiveDependencies:
              OrderOrderItemsFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  OrderOrderItemsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final int orderId;

  @override
  Override overrideWith(
    List<OrderItem> Function(OrderOrderItemsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OrderOrderItemsProvider._internal(
        (ref) => create(ref as OrderOrderItemsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<OrderItem>> createElement() {
    return _OrderOrderItemsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderOrderItemsProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OrderOrderItemsRef on AutoDisposeProviderRef<List<OrderItem>> {
  /// The parameter `orderId` of this provider.
  int get orderId;
}

class _OrderOrderItemsProviderElement
    extends AutoDisposeProviderElement<List<OrderItem>>
    with OrderOrderItemsRef {
  _OrderOrderItemsProviderElement(super.provider);

  @override
  int get orderId => (origin as OrderOrderItemsProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
