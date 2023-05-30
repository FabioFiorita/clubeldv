import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clube_ldv/model/company.dart';
import 'package:clube_ldv/model/discount.dart';
import 'package:clube_ldv/repository/discount_repository.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DiscountRepository tests', () {
    late DiscountRepository discountRepository;
    late FakeFirebaseFirestore mockFirestore;

    setUp(() {
      mockFirestore = FakeFirebaseFirestore();
      discountRepository = DiscountRepository(mockFirestore);
    });

    test('getAll returns a list of discounts', () async {
      // Add test data to Firestore
      await mockFirestore
          .collection('companies')
          .doc(mockCompanyData['id'].toString())
          .set(mockCompanyData);
      await mockFirestore
          .collection('companies')
          .doc(mockCompanyData['id'].toString())
          .collection('discounts')
          .doc(mockDiscountData['id'].toString())
          .set(mockDiscountData);

      // Call the getAll method
      final discounts = await discountRepository.getAll();

      // Verify that the discounts list is not empty
      expect(discounts.isNotEmpty, true);

      // Verify that the first discount in the list matches the mock data
      expect(discounts.first, mockDiscount);
      expect(discounts.first.id, mockDiscount.id);
      expect(discounts.first.name, mockDiscount.name);
      expect(discounts.first.category, mockDiscount.category);
      expect(discounts.first.description, mockDiscount.description);
      expect(discounts.first.company.id, mockDiscount.company.id);
      expect(discounts.first.company.name, mockDiscount.company.name);
      expect(discounts.first.company.number, mockDiscount.company.number);
      expect(discounts.first.company.address, mockDiscount.company.address);
      expect(discounts.first.company.city, mockDiscount.company.city);
      expect(discounts.first.company.image, mockDiscount.company.image);
      expect(discounts.first.company.instagram, mockDiscount.company.instagram);
      expect(discounts.first.company.openingHours,
          mockDiscount.company.openingHours);
      expect(discounts.first.company.createdAt, mockDiscount.company.createdAt);
      expect(discounts.first.company.updatedAt, mockDiscount.company.updatedAt);
      expect(discounts.first.validFrom, mockDiscount.validFrom);
      expect(discounts.first.validUntil, mockDiscount.validUntil);
      expect(discounts.first.image, mockDiscount.image);
      expect(discounts.first.link, mockDiscount.link);
      expect(discounts.first.createdAt, mockDiscount.createdAt);
      expect(discounts.first.updatedAt, mockDiscount.updatedAt);
    });

    test('getStarredDiscount returns a discount', () async {
      // Add test data to Firestore
      await mockFirestore
          .collection('starredDiscount')
          .add(mockStarredDiscountData);

      // Call the getStarredDiscount method
      final discount = await discountRepository.getStarredDiscount();

      // Verify that the discount matches the mock data
      expect(discount, mockDiscount);
      expect(discount.id, mockDiscount.id);
      expect(discount.name, mockDiscount.name);
      expect(discount.category, mockDiscount.category);
      expect(discount.description, mockDiscount.description);
      expect(discount.company.id, mockDiscount.company.id);
      expect(discount.company.name, mockDiscount.company.name);
      expect(discount.company.number, mockDiscount.company.number);
      expect(discount.company.address, mockDiscount.company.address);
      expect(discount.company.city, mockDiscount.company.city);
      expect(discount.company.image, mockDiscount.company.image);
      expect(discount.company.instagram, mockDiscount.company.instagram);
      expect(discount.company.openingHours, mockDiscount.company.openingHours);
      expect(discount.company.createdAt, mockDiscount.company.createdAt);
      expect(discount.company.updatedAt, mockDiscount.company.updatedAt);
      expect(discount.validFrom, mockDiscount.validFrom);
      expect(discount.validUntil, mockDiscount.validUntil);
      expect(discount.image, mockDiscount.image);
      expect(discount.link, mockDiscount.link);
      expect(discount.createdAt, mockDiscount.createdAt);
      expect(discount.updatedAt, mockDiscount.updatedAt);
    });
  });

  group('DiscountRepository provider tests', () {
    late DiscountRepository discountRepository;
    late FakeFirebaseFirestore mockFirestore;

    setUp(() {
      mockFirestore = FakeFirebaseFirestore();
      discountRepository = DiscountRepository(mockFirestore);
    });

    test('discountRepositoryProvider should contain discountRepository', () {
      final container = ProviderContainer(
        overrides: [
          discountRepositoryProvider.overrideWithValue(discountRepository),
        ],
      );

      final discount = container.read(discountRepositoryProvider);

      expect(discount, discountRepository);
    });
  });
}

final mockDiscount = Discount(
    id: "9790f3b0-fbf2-11ed-a0b0-1d3aacfc8e31",
    name: "Novo Desconto",
    category: "brasileira",
    description: "dassdadsadas",
    company: Company(
        id: "874d5070-fbca-11ed-a410-297f574d6638",
        name: "Lugares do Vale LDV",
        number: 12997387888,
        address: "Heitor Villa Lobos",
        city: "São José dos Campos",
        image: "https://www.logo.png",
        instagram: "@lugaresdovale",
        openingHours: "Seg-Sex",
        createdAt: DateTime(2023, 5, 26, 15, 20, 23, 957),
        updatedAt: DateTime(2023, 5, 26, 15, 20, 23, 957)),
    validFrom: DateTime(2023, 5, 26, 15, 20, 6, 168),
    validUntil: DateTime(2023, 5, 27, 15, 20, 6, 168),
    image: "https://www.image.com",
    link: "",
    createdAt: DateTime(2023, 5, 26, 15, 20, 23, 957),
    updatedAt: DateTime(2023, 5, 26, 15, 20, 23, 957));

final mockDiscountData = {
  "validFrom": Timestamp(1685125206, 168000000),
  "updatedAt": Timestamp(1685125223, 957000000),
  "description": "dassdadsadas",
  "validUntil": Timestamp(1685211606, 168000000),
  "category": "brasileira",
  "id": "9790f3b0-fbf2-11ed-a0b0-1d3aacfc8e31",
  "link": "",
  "createdAt": Timestamp(1685125223, 957000000),
  "image": "https://www.image.com",
  "name": "Novo Desconto"
};

final mockCompanyData = {
  "image": "https://www.logo.png",
  "city": "São José dos Campos",
  "updatedAt": Timestamp(1685125223, 957000000),
  "openingHours": "Seg-Sex",
  "number": 12997387888,
  "createdAt": Timestamp(1685125223, 957000000),
  "instagram": "@lugaresdovale",
  "address": "Heitor Villa Lobos",
  "id": "874d5070-fbca-11ed-a410-297f574d6638",
  "name": "Lugares do Vale LDV"
};

final mockStarredDiscountData = {
  "validFrom": Timestamp(1685125206, 168000000),
  "updatedAt": Timestamp(1685125223, 957000000),
  "description": "dassdadsadas",
  "validUntil": Timestamp(1685211606, 168000000),
  "category": "brasileira",
  "id": "9790f3b0-fbf2-11ed-a0b0-1d3aacfc8e31",
  "link": "",
  "createdAt": Timestamp(1685125223, 957000000),
  "image": "https://www.image.com",
  "name": "Novo Desconto",
  "company": {
    "image": "https://www.logo.png",
    "city": "São José dos Campos",
    "updatedAt": Timestamp(1685125223, 957000000),
    "openingHours": "Seg-Sex",
    "number": 12997387888,
    "createdAt": Timestamp(1685125223, 957000000),
    "instagram": "@lugaresdovale",
    "address": "Heitor Villa Lobos",
    "id": "874d5070-fbca-11ed-a410-297f574d6638",
    "name": "Lugares do Vale LDV"
  },
};
