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
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firestore.collectionGroup('discounts').orderBy('category').get();
    for (var element in querySnapshot.docs) {
      final Map<String, dynamic> discountData = element.data();
      final companyQuerySnapshot = await element.reference.parent.parent?.get();
      final Map<String, dynamic>? companyData = companyQuerySnapshot?.data();
      if (companyData != null) {
        discountData['company'] = companyData;
        Discount discount = Discount.fromJson(discountData);
        discounts.add(discount);
      }
    }
    return discounts;
  }

  Future<Discount> getStarredDiscount() async {
    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore.collection('starredDiscount').get();
    final Map<String, dynamic> discountData = querySnapshot.docs.first.data();
    final Discount discount = Discount.fromJson(discountData);
    return discount;
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
