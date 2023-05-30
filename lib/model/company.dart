import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@Freezed(toJson: false)
class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    required int number,
    required String address,
    required String city,
    required String image,
    required String instagram,
    required String openingHours,
    @JsonKey(fromJson: _sendAtFromJson) required DateTime createdAt,
    @JsonKey(fromJson: _sendAtFromJson) required DateTime updatedAt,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}

DateTime _sendAtFromJson(Timestamp timestamp) => timestamp.toDate();
