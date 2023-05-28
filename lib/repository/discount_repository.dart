// Create a interface for my repositories with getAll and getById methods
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../interface/repository.dart';
import '../model/discount.dart';

final discountRepositoryProvider = Provider<DiscountRepository>((ref) {
  return DiscountRepository(FirebaseFirestore.instance);
});

class DiscountRepository implements IRepository<Discount> {
  final FirebaseFirestore firestore;

  DiscountRepository(
    this.firestore,
  );

  @override
  Future<List<Discount>> getAll() async {
    final List<Discount> discounts = [];
    await firestore.collectionGroup('discounts').get().then((value) {
      for (var element in value.docs) {
        discounts.add(Discount.fromJson(element.data()));
      }
    });
    return discounts;
  }

  @override
  Future<Discount> getById(String id) async {
    final Discount discount = await firestore
        .collectionGroup('discounts')
        .where('id', isEqualTo: id)
        .get()
        .then((value) => Discount.fromJson(value.docs.first.data()));
    return discount;
  }
}
