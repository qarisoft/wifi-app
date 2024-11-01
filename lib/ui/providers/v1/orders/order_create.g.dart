// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderCreateHash() => r'14e62d0498430043b785ce2f221f333f898cb0d4';

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

abstract class _$OrderCreate
    extends BuildlessAutoDisposeAsyncNotifier<OrderCreateState> {
  late final int oId;

  FutureOr<OrderCreateState> build(
    int oId,
  );
}

/// See also [OrderCreate].
@ProviderFor(OrderCreate)
const orderCreateProvider = OrderCreateFamily();

/// See also [OrderCreate].
class OrderCreateFamily extends Family<AsyncValue<OrderCreateState>> {
  /// See also [OrderCreate].
  const OrderCreateFamily();

  /// See also [OrderCreate].
  OrderCreateProvider call(
    int oId,
  ) {
    return OrderCreateProvider(
      oId,
    );
  }

  @override
  OrderCreateProvider getProviderOverride(
    covariant OrderCreateProvider provider,
  ) {
    return call(
      provider.oId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>{
    ordersProvider,
    customersProvider,
    productsProvider,
    orderItemsProvider
  };

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    ordersProvider,
    ...?ordersProvider.allTransitiveDependencies,
    customersProvider,
    ...?customersProvider.allTransitiveDependencies,
    productsProvider,
    ...?productsProvider.allTransitiveDependencies,
    orderItemsProvider,
    ...?orderItemsProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'orderCreateProvider';
}

/// See also [OrderCreate].
class OrderCreateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    OrderCreate, OrderCreateState> {
  /// See also [OrderCreate].
  OrderCreateProvider(
    int oId,
  ) : this._internal(
          () => OrderCreate()..oId = oId,
          from: orderCreateProvider,
          name: r'orderCreateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderCreateHash,
          dependencies: OrderCreateFamily._dependencies,
          allTransitiveDependencies:
              OrderCreateFamily._allTransitiveDependencies,
          oId: oId,
        );

  OrderCreateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.oId,
  }) : super.internal();

  final int oId;

  @override
  FutureOr<OrderCreateState> runNotifierBuild(
    covariant OrderCreate notifier,
  ) {
    return notifier.build(
      oId,
    );
  }

  @override
  Override overrideWith(OrderCreate Function() create) {
    return ProviderOverride(
      origin: this,
      override: OrderCreateProvider._internal(
        () => create()..oId = oId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        oId: oId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<OrderCreate, OrderCreateState>
      createElement() {
    return _OrderCreateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderCreateProvider && other.oId == oId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, oId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OrderCreateRef on AutoDisposeAsyncNotifierProviderRef<OrderCreateState> {
  /// The parameter `oId` of this provider.
  int get oId;
}

class _OrderCreateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OrderCreate,
        OrderCreateState> with OrderCreateRef {
  _OrderCreateProviderElement(super.provider);

  @override
  int get oId => (origin as OrderCreateProvider).oId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
