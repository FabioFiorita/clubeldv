// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      id: json['id'] as String,
      name: json['name'] as String,
      number: json['number'] as int,
      address: json['address'] as String,
      city: json['city'] as String,
      image: json['image'] as String,
      instagram: json['instagram'] as String,
      openingHours: json['openingHours'] as String,
      createdAt: _sendAtFromJson(json['createdAt'] as Timestamp),
      updatedAt: _sendAtFromJson(json['updatedAt'] as Timestamp),
    );
