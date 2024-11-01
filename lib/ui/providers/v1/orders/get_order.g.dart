// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOrderHash() => r'feec207a2f37830e7a713552eb5d8725c68ee08a';

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

/// See also [getOrder].
@ProviderFor(getOrder)
const getOrderProvider = GetOrderFamily();

/// See also [getOrder].
class GetOrderFamily extends Family<Order?> {
  /// See also [getOrder].
  const GetOrderFamily();

  /// See also [getOrder].
  GetOrderProvider call(
    int orderId,
  ) {
    return GetOrderProvider(
      orderId,
    );
  }

  @override
  GetOrderProvider getProviderOverride(
    covariant GetOrderProvider provider,
  ) {
    return call(
      provider.orderId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    ordersReadyProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    ordersReadyProvider,
    ...?ordersReadyProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getOrderProvider';
}

/// See also [getOrder].
class GetOrderProvider extends AutoDisposeProvider<Order?> {
  /// See also [getOrder].
  GetOrderProvider(
    int orderId,
  ) : this._internal(
          (ref) => getOrder(
            ref as GetOrderRef,
            orderId,
          ),
          from: getOrderProvider,
          name: r'getOrderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOrderHash,
          dependencies: GetOrderFamily._dependencies,
          allTransitiveDependencies: GetOrderFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  GetOrderProvider._internal(
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
    Order? Function(GetOrderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOrderProvider._internal(
        (ref) => create(ref as GetOrderRef),
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
  AutoDisposeProviderElement<Order?> createElement() {
    return _GetOrderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOrderProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetOrderRef on AutoDisposeProviderRef<Order?> {
  /// The parameter `orderId` of this provider.
  int get orderId;
}

class _GetOrderProviderElement extends AutoDisposeProviderElement<Order?>
    with GetOrderRef {
  _GetOrderProviderElement(super.provider);

  @override
  int get orderId => (origin as GetOrderProvider).orderId;
}

String _$getOrderWithCustomerHash() =>
    r'e70ee0121aaae5b35904d0efe603e8bd454e5638';

/// See also [getOrderWithCustomer].
@ProviderFor(getOrderWithCustomer)
const getOrderWithCustomerProvider = GetOrderWithCustomerFamily();

/// See also [getOrderWithCustomer].
class GetOrderWithCustomerFamily extends Family<(Customer?, Order?)> {
  /// See also [getOrderWithCustomer].
  const GetOrderWithCustomerFamily();

  /// See also [getOrderWithCustomer].
  GetOrderWithCustomerProvider call(
    int orderId,
  ) {
    return GetOrderWithCustomerProvider(
      orderId,
    );
  }

  @override
  GetOrderWithCustomerProvider getProviderOverride(
    covariant GetOrderWithCustomerProvider provider,
  ) {
    return call(
      provider.orderId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    ordersReadyProvider,
    customersReadyProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    ordersReadyProvider,
    ...?ordersReadyProvider.allTransitiveDependencies,
    customersReadyProvider,
    ...?customersReadyProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getOrderWithCustomerProvider';
}

/// See also [getOrderWithCustomer].
class GetOrderWithCustomerProvider
    extends AutoDisposeProvider<(Customer?, Order?)> {
  /// See also [getOrderWithCustomer].
  GetOrderWithCustomerProvider(
    int orderId,
  ) : this._internal(
          (ref) => getOrderWithCustomer(
            ref as GetOrderWithCustomerRef,
            orderId,
          ),
          from: getOrderWithCustomerProvider,
          name: r'getOrderWithCustomerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOrderWithCustomerHash,
          dependencies: GetOrderWithCustomerFamily._dependencies,
          allTransitiveDependencies:
              GetOrderWithCustomerFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  GetOrderWithCustomerProvider._internal(
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
    (Customer?, Order?) Function(GetOrderWithCustomerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOrderWithCustomerProvider._internal(
        (ref) => create(ref as GetOrderWithCustomerRef),
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
  AutoDisposeProviderElement<(Customer?, Order?)> createElement() {
    return _GetOrderWithCustomerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOrderWithCustomerProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetOrderWithCustomerRef on AutoDisposeProviderRef<(Customer?, Order?)> {
  /// The parameter `orderId` of this provider.
  int get orderId;
}

class _GetOrderWithCustomerProviderElement
    extends AutoDisposeProviderElement<(Customer?, Order?)>
    with GetOrderWithCustomerRef {
  _GetOrderWithCustomerProviderElement(super.provider);

  @override
  int get orderId => (origin as GetOrderWithCustomerProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
