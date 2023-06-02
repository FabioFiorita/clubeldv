import 'package:clubeldv/model/discount.dart';
import 'package:clubeldv/repository/discount_repository.dart';
import 'package:clubeldv/state/discount_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../mock/mock_discount.dart';
@GenerateMocks([DiscountRepository])
import 'discount_providers_test.mocks.dart';

class Listener<T> extends Mock {
  void call(T? previous, T next);
}

void main() {
  group('DiscountProviders test', () {
    late MockDiscountRepository mockRepository;
    late ProviderContainer container;

    setUp(() {
      mockRepository = MockDiscountRepository();
      when(mockRepository.getAll()).thenAnswer((_) async => mockDiscounts);
      when(mockRepository.getStarredDiscount())
          .thenAnswer((_) async => mockDiscount);
      container = ProviderContainer(
        overrides: [
          discountRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    test('discountByCategory returns filtered discounts', () {
      final provider = container.read(
          discountByCategoryProvider(category: mockDiscounts[0].category));

      provider.whenData((value) {
        expect(value, isA<AsyncData<List<Discount>>>());
        expect(value, hasLength(1));
        expect(value[0].id, mockDiscounts[0].id);
      });
    });

    test('Discounts provider returns all discounts', () async {
      await container.read(discountsProvider.future);
      final provider = container.read(discountsProvider);
      expect(provider.value, hasLength(mockDiscounts.length));
      expect(provider.value![1], mockDiscounts[1]);
    });

    test('StarredDiscount provider returns the starred discount', () async {
      await container.read(starredDiscountProvider.future);
      final provider = container.read(starredDiscountProvider);
      expect(provider.value, mockDiscount);
    });

    test('discount provider returns the discount with the specified ID', () {
      final provider =
          container.read(discountProvider(id: mockDiscounts[1].id));
      provider.whenData((value) {
        expect(value, isA<Discount>());
        expect(value.id, mockDiscounts[1].id);
      });
    });
  });

  group('DiscountProviders tests with error', () {
    late MockDiscountRepository mockRepository;
    late ProviderContainer container;

    setUp(() {
      mockRepository = MockDiscountRepository();
      when(mockRepository.getAll())
          .thenAnswer((_) async => throw Exception('Error'));
      when(mockRepository.getStarredDiscount())
          .thenAnswer((_) async => throw Exception('Error'));
      container = ProviderContainer(
        overrides: [
          discountRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    test('discountByCategory should be AsyncError and return empty', () {
      final provider = container.read(
          discountByCategoryProvider(category: mockDiscounts[0].category));
      provider.when(
        data: (data) => expect(data, null),
        error: (err, stack) => expect(err, isA<Exception>()),
        loading: () => expect(provider.value, null),
      );
    });

    test('Discounts provider should be AsyncError and return empty', () {
      final provider = container.read(discountsProvider);
      provider.when(
        data: (data) => expect(data, null),
        error: (err, stack) => expect(err, isA<Exception>()),
        loading: () => expect(provider.value, null),
      );
    });

    test('StarredDiscount provider should be AsyncError and return null', () {
      final provider = container.read(starredDiscountProvider);
      provider.when(
        data: (data) => expect(data, null),
        error: (err, stack) => expect(err, isA<Exception>()),
        loading: () => expect(provider.value, null),
      );
    });

    test('discount provider should be AsyncError and return empty', () {
      final provider =
          container.read(discountProvider(id: mockDiscounts[1].id));

      provider.when(
        data: (data) => expect(data, null),
        error: (err, stack) => expect(err, isA<Exception>()),
        loading: () => expect(provider.value, null),
      );
    });
  });

  group(
      'DiscountRepository should be called once and after providers should use cache',
      () {
    late MockDiscountRepository mockRepository;
    late ProviderContainer container;

    setUp(() {
      mockRepository = MockDiscountRepository();
      when(mockRepository.getAll()).thenAnswer((_) async => mockDiscounts);
      when(mockRepository.getStarredDiscount())
          .thenAnswer((_) async => mockDiscount);
      container = ProviderContainer(
        overrides: [
          discountRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    test('discountByCategory should use cached data', () {
      verifyNever(mockRepository.getAll());
      // Pre-fill the cache with data
      container.read(
          discountByCategoryProvider(category: mockDiscounts[0].category));

      verify(mockRepository.getAll()).called(1);

      // Clear any interactions with the repository
      clearInteractions(mockRepository);

      // Access the provider again
      container.read(
          discountByCategoryProvider(category: mockDiscounts[0].category));

      // Verify that the repository was not called again
      verifyNever(mockRepository.getAll());
    });

    test('Discounts provider should use cached data', () async {
      verifyNever(mockRepository.getAll());

      // Pre-fill the cache with data
      await container.read(discountsProvider.future);

      verify(mockRepository.getAll()).called(1);

      // Clear any interactions with the repository
      clearInteractions(mockRepository);

      // Access the provider again
      container.read(discountsProvider);

      // Verify that the repository was not called again
      verifyNever(mockRepository.getAll());
    });

    test('StarredDiscount provider should use cached data', () async {
      verifyNever(mockRepository.getStarredDiscount());
      // Pre-fill the cache with data
      await container.read(starredDiscountProvider.future);

      verify(mockRepository.getStarredDiscount()).called(1);

      // Clear any interactions with the repository
      clearInteractions(mockRepository);

      // Access the provider again
      container.read(starredDiscountProvider.future);

      // Verify that the repository was not called again
      verifyNever(mockRepository.getStarredDiscount());
    });

    test('discount provider should use cached data', () {
      final discountId = mockDiscounts[1].id;

      verifyNever(mockRepository.getAll());

      // Pre-fill the cache with data
      container.read(discountProvider(id: discountId));

      verify(mockRepository.getAll()).called(1);

      // Clear any interactions with the repository
      clearInteractions(mockRepository);

      // Access the provider again
      container.read(discountProvider(id: discountId));

      // Verify that the repository was not called again
      verifyNever(mockRepository.getAll());
    });
  });
}
