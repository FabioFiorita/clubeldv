// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
mixin _$Discount {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Company get company => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get validFrom => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get validUntil => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      String description,
      Company company,
      @JsonKey(fromJson: _sendAtFromJson) DateTime validFrom,
      @JsonKey(fromJson: _sendAtFromJson) DateTime validUntil,
      String? image,
      String? link,
      @JsonKey(fromJson: _sendAtFromJson) DateTime createdAt,
      @JsonKey(fromJson: _sendAtFromJson) DateTime updatedAt});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? description = null,
    Object? company = null,
    Object? validFrom = null,
    Object? validUntil = null,
    Object? image = freezed,
    Object? link = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DiscountCopyWith<$Res> implements $DiscountCopyWith<$Res> {
  factory _$$_DiscountCopyWith(
          _$_Discount value, $Res Function(_$_Discount) then) =
      __$$_DiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      String description,
      Company company,
      @JsonKey(fromJson: _sendAtFromJson) DateTime validFrom,
      @JsonKey(fromJson: _sendAtFromJson) DateTime validUntil,
      String? image,
      String? link,
      @JsonKey(fromJson: _sendAtFromJson) DateTime createdAt,
      @JsonKey(fromJson: _sendAtFromJson) DateTime updatedAt});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$_DiscountCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$_Discount>
    implements _$$_DiscountCopyWith<$Res> {
  __$$_DiscountCopyWithImpl(
      _$_Discount _value, $Res Function(_$_Discount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? description = null,
    Object? company = null,
    Object? validFrom = null,
    Object? validUntil = null,
    Object? image = freezed,
    Object? link = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Discount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Discount implements _Discount {
  const _$_Discount(
      {required this.id,
      required this.name,
      required this.category,
      required this.description,
      required this.company,
      @JsonKey(fromJson: _sendAtFromJson) required this.validFrom,
      @JsonKey(fromJson: _sendAtFromJson) required this.validUntil,
      this.image,
      this.link,
      @JsonKey(fromJson: _sendAtFromJson) required this.createdAt,
      @JsonKey(fromJson: _sendAtFromJson) required this.updatedAt});

  factory _$_Discount.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String category;
  @override
  final String description;
  @override
  final Company company;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  final DateTime validFrom;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  final DateTime validUntil;
  @override
  final String? image;
  @override
  final String? link;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  final DateTime createdAt;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Discount(id: $id, name: $name, category: $category, description: $description, company: $company, validFrom: $validFrom, validUntil: $validUntil, image: $image, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Discount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, category, description,
      company, validFrom, validUntil, image, link, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountCopyWith<_$_Discount> get copyWith =>
      __$$_DiscountCopyWithImpl<_$_Discount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountToJson(
      this,
    );
  }
}

abstract class _Discount implements Discount {
  const factory _Discount(
      {required final String id,
      required final String name,
      required final String category,
      required final String description,
      required final Company company,
      @JsonKey(fromJson: _sendAtFromJson)
          required final DateTime validFrom,
      @JsonKey(fromJson: _sendAtFromJson)
          required final DateTime validUntil,
      final String? image,
      final String? link,
      @JsonKey(fromJson: _sendAtFromJson)
          required final DateTime createdAt,
      @JsonKey(fromJson: _sendAtFromJson)
          required final DateTime updatedAt}) = _$_Discount;

  factory _Discount.fromJson(Map<String, dynamic> json) = _$_Discount.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get category;
  @override
  String get description;
  @override
  Company get company;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get validFrom;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get validUntil;
  @override
  String? get image;
  @override
  String? get link;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get createdAt;
  @override
  @JsonKey(fromJson: _sendAtFromJson)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountCopyWith<_$_Discount> get copyWith =>
      throw _privateConstructorUsedError;
}
