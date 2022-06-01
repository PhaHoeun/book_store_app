import 'package:freezed_annotation/freezed_annotation.dart';
part 'book_detail_model.freezed.dart';
part 'book_detail_model.g.dart';

@freezed
class BookDetailModel with _$BookDetailModel {
  factory BookDetailModel({
    String? title,
    String? authors,
    String? price,
    String? subtitle,
    String? rating,
    String? desc,
    String? image,
    String? isbn13,
  }) = _BookDetailModel;
  factory BookDetailModel.fromJson(Map<String, dynamic> json) =>
      _$BookDetailModelFromJson(json);
}
