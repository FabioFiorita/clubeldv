import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubeldv/model/company.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount.freezed.dart';
part 'discount.g.dart';

@Freezed(toJson: false)
class Discount with _$Discount {
  const factory Discount({
    required String id,
    required String name,
    required String category,
    required String description,
    required Company company,
    @JsonKey(fromJson: _sendAtFromJson) required DateTime validFrom,
    @JsonKey(fromJson: _sendAtFromJson) required DateTime validUntil,
    String? image,
    String? link,
    @JsonKey(fromJson: _sendAtFromJson) required DateTime createdAt,
    @JsonKey(fromJson: _sendAtFromJson) required DateTime updatedAt,
  }) = _Discount;

  factory Discount.fromJson(Map<String, Object?> json) =>
      _$DiscountFromJson(json);
}

DateTime _sendAtFromJson(Timestamp timestamp) => timestamp.toDate();
