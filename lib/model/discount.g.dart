// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Discount _$$_DiscountFromJson(Map<String, dynamic> json) => _$_Discount(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      validFrom: _sendAtFromJson(json['validFrom'] as Timestamp),
      validUntil: _sendAtFromJson(json['validUntil'] as Timestamp),
      image: json['image'] as String?,
      link: json['link'] as String?,
      createdAt: _sendAtFromJson(json['createdAt'] as Timestamp),
      updatedAt: _sendAtFromJson(json['updatedAt'] as Timestamp),
    );
