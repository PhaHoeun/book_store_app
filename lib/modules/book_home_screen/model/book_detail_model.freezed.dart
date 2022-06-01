// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDetailModel _$BookDetailModelFromJson(Map<String, dynamic> json) {
  return _BookDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BookDetailModel {
  String? get title => throw _privateConstructorUsedError;
  String? get authors => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get isbn13 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailModelCopyWith<BookDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailModelCopyWith<$Res> {
  factory $BookDetailModelCopyWith(
          BookDetailModel value, $Res Function(BookDetailModel) then) =
      _$BookDetailModelCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? authors,
      String? price,
      String? subtitle,
      String? rating,
      String? desc,
      String? image,
      String? isbn13});
}

/// @nodoc
class _$BookDetailModelCopyWithImpl<$Res>
    implements $BookDetailModelCopyWith<$Res> {
  _$BookDetailModelCopyWithImpl(this._value, this._then);

  final BookDetailModel _value;
  // ignore: unused_field
  final $Res Function(BookDetailModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? price = freezed,
    Object? subtitle = freezed,
    Object? rating = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? isbn13 = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn13: isbn13 == freezed
          ? _value.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookDetailModelCopyWith<$Res>
    implements $BookDetailModelCopyWith<$Res> {
  factory _$$_BookDetailModelCopyWith(
          _$_BookDetailModel value, $Res Function(_$_BookDetailModel) then) =
      __$$_BookDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? authors,
      String? price,
      String? subtitle,
      String? rating,
      String? desc,
      String? image,
      String? isbn13});
}

/// @nodoc
class __$$_BookDetailModelCopyWithImpl<$Res>
    extends _$BookDetailModelCopyWithImpl<$Res>
    implements _$$_BookDetailModelCopyWith<$Res> {
  __$$_BookDetailModelCopyWithImpl(
      _$_BookDetailModel _value, $Res Function(_$_BookDetailModel) _then)
      : super(_value, (v) => _then(v as _$_BookDetailModel));

  @override
  _$_BookDetailModel get _value => super._value as _$_BookDetailModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? price = freezed,
    Object? subtitle = freezed,
    Object? rating = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? isbn13 = freezed,
  }) {
    return _then(_$_BookDetailModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn13: isbn13 == freezed
          ? _value.isbn13
          : isbn13 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookDetailModel implements _BookDetailModel {
  _$_BookDetailModel(
      {this.title,
      this.authors,
      this.price,
      this.subtitle,
      this.rating,
      this.desc,
      this.image,
      this.isbn13});

  factory _$_BookDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookDetailModelFromJson(json);

  @override
  final String? title;
  @override
  final String? authors;
  @override
  final String? price;
  @override
  final String? subtitle;
  @override
  final String? rating;
  @override
  final String? desc;
  @override
  final String? image;
  @override
  final String? isbn13;

  @override
  String toString() {
    return 'BookDetailModel(title: $title, authors: $authors, price: $price, subtitle: $subtitle, rating: $rating, desc: $desc, image: $image, isbn13: $isbn13)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDetailModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.authors, authors) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isbn13, isbn13));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(authors),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isbn13));

  @JsonKey(ignore: true)
  @override
  _$$_BookDetailModelCopyWith<_$_BookDetailModel> get copyWith =>
      __$$_BookDetailModelCopyWithImpl<_$_BookDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDetailModelToJson(this);
  }
}

abstract class _BookDetailModel implements BookDetailModel {
  factory _BookDetailModel(
      {final String? title,
      final String? authors,
      final String? price,
      final String? subtitle,
      final String? rating,
      final String? desc,
      final String? image,
      final String? isbn13}) = _$_BookDetailModel;

  factory _BookDetailModel.fromJson(Map<String, dynamic> json) =
      _$_BookDetailModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get authors => throw _privateConstructorUsedError;
  @override
  String? get price => throw _privateConstructorUsedError;
  @override
  String? get subtitle => throw _privateConstructorUsedError;
  @override
  String? get rating => throw _privateConstructorUsedError;
  @override
  String? get desc => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get isbn13 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BookDetailModelCopyWith<_$_BookDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
