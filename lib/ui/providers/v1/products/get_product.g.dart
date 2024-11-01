// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getProductHash() => r'5801839c9a8a73e76846083f251047c55961b3a7';

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

/// See also [getProduct].
@ProviderFor(getProduct)
const getProductProvider = GetProductFamily();

/// See also [getProduct].
class GetProductFamily extends Family<Product> {
  /// See also [getProduct].
  const GetProductFamily();

  /// See also [getProduct].
  GetProductProvider call(
    int id,
  ) {
    return GetProductProvider(
      id,
    );
  }

  @override
  GetProductProvider getProviderOverride(
    covariant GetProductProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    productsReadyProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    productsReadyProvider,
    ...?productsReadyProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getProductProvider';
}

/// See also [getProduct].
class GetProductProvider extends AutoDisposeProvider<Product> {
  /// See also [getProduct].
  GetProductProvider(
    int id,
  ) : this._internal(
          (ref) => getProduct(
            ref as GetProductRef,
            id,
          ),
          from: getProductProvider,
          name: r'getProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getProductHash,
          dependencies: GetProductFamily._dependencies,
          allTransitiveDependencies:
              GetProductFamily._allTransitiveDependencies,
          id: id,
        );

  GetProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    Product Function(GetProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetProductProvider._internal(
        (ref) => create(ref as GetProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Product> createElement() {
    return _GetProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetProductProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetProductRef on AutoDisposeProviderRef<Product> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetProductProviderElement extends AutoDisposeProviderElement<Product>
    with GetProductRef {
  _GetProductProviderElement(super.provider);

  @override
  int get id => (origin as GetProductProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
