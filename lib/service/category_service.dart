import 'package:clube_ldv/model/category.dart';

import '../utils/categories.dart';

class CategoryService {
  Category getFromId(int id) {
    return categories.firstWhere((element) => element.id == id);
  }
}