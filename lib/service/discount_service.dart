import 'package:clube_ldv/model/company.dart';
import 'package:clube_ldv/model/discount.dart';

class DiscountService {
  Discount getFromId(int id) {
    final Discount discount = Discount(id: 1, name: 'Desconto', description: 'Description', company: Company(name: 'Compnay'));
    return discount;
  }
}