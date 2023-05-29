import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/discount.dart';
import '../repository/discount_repository.dart';

part 'discount_providers.g.dart';

@riverpod
AsyncValue<List<Discount>> discountByCategory(DiscountByCategoryRef ref,
    {required String category}) {
  final asyncDiscounts = ref.watch(discountsProvider);
  return asyncDiscounts.when(
    data: (discounts) {
      final filteredDiscounts = discounts
          .where((discount) => discount.category == category)
          .toList();
      return AsyncData(filteredDiscounts);
    },
    loading: () => const AsyncLoading(),
    error: (error, stack) => AsyncError(error, stack),
  );
}

@riverpod
class Discounts extends _$Discounts {
  @override
  FutureOr<List<Discount>> build() async {
    return _getAllDiscounts();
  }

  Future<List<Discount>> _getAllDiscounts() async {
    final repository = ref.read(discountRepositoryProvider);
    return await repository.getAll();
  }
}

@riverpod
class StarredDiscount extends _$StarredDiscount {
  @override
  FutureOr<Discount> build() async {
    return _getStarredDiscount();
  }

  Future<Discount> _getStarredDiscount() async {
    final repository = ref.read(discountRepositoryProvider);
    return await repository.getStarredDiscount();
  }
}