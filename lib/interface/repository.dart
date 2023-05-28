abstract class IRepository<T> {
  Future<List<T>> getAll();

  Future<T> getById(String id);
}