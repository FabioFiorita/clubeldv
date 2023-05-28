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
      validFrom: _sendAtFromJson(json['validFrom'] as Timestamp),
      validUntil: _sendAtFromJson(json['validUntil'] as Timestamp),
      image: json['image'] as String?,
      link: json['link'] as String?,
      createdAt: _sendAtFromJson(json['createdAt'] as Timestamp),
      updatedAt: _sendAtFromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$$_DiscountToJson(_$_Discount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil.toIso8601String(),
      'image': instance.image,
      'link': instance.link,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
