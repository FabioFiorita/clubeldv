// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$discountByCategoryHash() =>
    r'eb1cab8dd3b1d336100fb37e5453bf1bbdec5cf4';

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

typedef DiscountByCategoryRef
    = AutoDisposeProviderRef<AsyncValue<List<Discount>>>;

/// See also [discountByCategory].
@ProviderFor(discountByCategory)
const discountByCategoryProvider = DiscountByCategoryFamily();

/// See also [discountByCategory].
class DiscountByCategoryFamily extends Family<AsyncValue<List<Discount>>> {
  /// See also [discountByCategory].
  const DiscountByCategoryFamily();

  /// See also [discountByCategory].
  DiscountByCategoryProvider call({
    required String category,
  }) {
    return DiscountByCategoryProvider(
      category: category,
    );
  }

  @override
  DiscountByCategoryProvider getProviderOverride(
    covariant DiscountByCategoryProvider provider,
  ) {
    return call(
      category: provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'discountByCategoryProvider';
}

/// See also [discountByCategory].
class DiscountByCategoryProvider
    extends AutoDisposeProvider<AsyncValue<List<Discount>>> {
  /// See also [discountByCategory].
  DiscountByCategoryProvider({
    required this.category,
  }) : super.internal(
          (ref) => discountByCategory(
            ref,
            category: category,
          ),
          from: discountByCategoryProvider,
          name: r'discountByCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$discountByCategoryHash,
          dependencies: DiscountByCategoryFamily._dependencies,
          allTransitiveDependencies:
              DiscountByCategoryFamily._allTransitiveDependencies,
        );

  final String category;

  @override
  bool operator ==(Object other) {
    return other is DiscountByCategoryProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$discountHash() => r'1e3564f740deb64f6a86dd7b3eb8467d214cec5a';
typedef DiscountRef = AutoDisposeProviderRef<AsyncValue<Discount>>;

/// See also [discount].
@ProviderFor(discount)
const discountProvider = DiscountFamily();

/// See also [discount].
class DiscountFamily extends Family<AsyncValue<Discount>> {
  /// See also [discount].
  const DiscountFamily();

  /// See also [discount].
  DiscountProvider call({
    required String id,
  }) {
    return DiscountProvider(
      id: id,
    );
  }

  @override
  DiscountProvider getProviderOverride(
    covariant DiscountProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'discountProvider';
}

/// See also [discount].
class DiscountProvider extends AutoDisposeProvider<AsyncValue<Discount>> {
  /// See also [discount].
  DiscountProvider({
    required this.id,
  }) : super.internal(
          (ref) => discount(
            ref,
            id: id,
          ),
          from: discountProvider,
          name: r'discountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$discountHash,
          dependencies: DiscountFamily._dependencies,
          allTransitiveDependencies: DiscountFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is DiscountProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$discountsHash() => r'857b8396a8ec5d1b2b4c8f852542b67820eba64a';

/// See also [Discounts].
@ProviderFor(Discounts)
final discountsProvider =
    AutoDisposeAsyncNotifierProvider<Discounts, List<Discount>>.internal(
  Discounts.new,
  name: r'discountsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$discountsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Discounts = AutoDisposeAsyncNotifier<List<Discount>>;
String _$starredDiscountHash() => r'ee1cd45e8ef8b2932fd261690d8abb8dcb7c731a';

/// See also [StarredDiscount].
@ProviderFor(StarredDiscount)
final starredDiscountProvider =
    AutoDisposeAsyncNotifierProvider<StarredDiscount, Discount>.internal(
  StarredDiscount.new,
  name: r'starredDiscountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$starredDiscountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StarredDiscount = AutoDisposeAsyncNotifier<Discount>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
