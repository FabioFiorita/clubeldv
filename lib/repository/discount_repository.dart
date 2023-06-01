import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../interface/repository.dart';
import '../model/discount.dart';

final discountRepositoryProvider = Provider<DiscountRepository>((ref) {
  return DiscountRepository(FirebaseFirestore.instance);
});

class DiscountRepository implements IRepository<Discount> {
  final FirebaseFirestore firestore;
  final Logger _logger = Logger();

  DiscountRepository(
    this.firestore,
  );

  @override
  Future<List<Discount>> getAll() async {
    final List<Discount> discounts = [];
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firestore.collectionGroup('discounts').orderBy('name').get();
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
    _logger.d("Requesting discounts from firestore with ${discounts.length} items");
    return discounts;
  }

  Future<Discount> getStarredDiscount() async {
    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore.collection('starredDiscount').get();
    final Map<String, dynamic> discountData = querySnapshot.docs.first.data();
    final Discount discount = Discount.fromJson(discountData);
    _logger.d("Requesting starred discount from firestore");
    return discount;
  }
}
