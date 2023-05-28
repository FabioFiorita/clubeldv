// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$discountByCategoryHash() =>
    r'ea2d21d9dbbe5c488f6cd00d786dabb1789dc650';

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

typedef DiscountByCategoryRef = AutoDisposeProviderRef<AsyncValue<dynamic>>;

/// See also [discountByCategory].
@ProviderFor(discountByCategory)
const discountByCategoryProvider = DiscountByCategoryFamily();

/// See also [discountByCategory].
class DiscountByCategoryFamily extends Family<AsyncValue<dynamic>> {
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
    extends AutoDisposeProvider<AsyncValue<dynamic>> {
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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
