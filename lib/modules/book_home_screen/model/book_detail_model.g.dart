// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDetailModel _$$_BookDetailModelFromJson(Map<String, dynamic> json) =>
    _$_BookDetailModel(
      title: json['title'] as String?,
      authors: json['authors'] as String?,
      price: json['price'] as String?,
      subtitle: json['subtitle'] as String?,
      rating: json['rating'] as String?,
      desc: json['desc'] as String?,
      image: json['image'] as String?,
      isbn13: json['isbn13'] as String?,
    );

Map<String, dynamic> _$$_BookDetailModelToJson(_$_BookDetailModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'price': instance.price,
      'subtitle': instance.subtitle,
      'rating': instance.rating,
      'desc': instance.desc,
      'image': instance.image,
      'isbn13': instance.isbn13,
    };
