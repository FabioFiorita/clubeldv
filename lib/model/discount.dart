import 'company.dart';

class Discount {
  final int id;
  final String name;
  final String description;
  final Company company;
  // final String image;
  // final String code;
  // final String link;
  // final String category;
  // final String type;
  // final String value;
  // final String expiryDate;
  // final String status;
  // final String createdAt;
  // final String updatedAt;

  Discount({
    required this.id,
    required this.name,
    required this.description,
    required this.company,
    // required this.image,
    // required this.code,
    // required this.link,
    // required this.category,
    // required this.type,
    // required this.value,
    // required this.expiryDate,
    // required this.status,
    // required this.createdAt,
    // required this.updatedAt,
  });

  factory Discount.fromJson(Map<String, dynamic> json) {
    return Discount(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      company: Company.fromJson(json['company']),
      // image: json['image'],
      // code: json['code'],
      // link: json['link'],
      // category: json['category'],
      // type: json['type'],
      // value: json['value'],
      // expiryDate: json['expiry_date'],
      // status: json['status'],
      // createdAt: json['created_at'],
      // updatedAt: json['updated_at'],
    );
  }
}