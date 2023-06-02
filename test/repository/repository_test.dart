import 'package:clubeldv/repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';

class MockRepository<T> extends IRepository<T> {
  @override
  Future<List<T>> getAll() async {
    // Return a mock list of items
    return <T>[];
  }
}

void main() {
  group('IRepository tests', () {
    test('getAll returns a String list of items', () async {
      final repository = MockRepository<String>();

      final items = await repository.getAll();

      expect(items, isA<List<String>>());
    });

    test('getAll returns a int list of items', () async {
      final repository = MockRepository<int>();

      final items = await repository.getAll();

      expect(items, isA<List<int>>());
    });
  });
}
