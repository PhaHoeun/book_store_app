import 'package:book_store_app/modules/book_home_screen/model/book_detail_model.dart';
import 'package:book_store_app/utils/helper/api_base_helper.dart';
import 'package:get/get.dart';

class BookDetailController extends GetxController {
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();
  var bookDetailModel = BookDetailModel().obs;
  // var bookDetailList = <BookDetailModel>[].obs;
  var isLoading = false.obs;

  final rating = 0.0.obs;

  Future<void> onFetchDataBookDetail(String? isbn13) async {
    isLoading(true);
    apiBaseHelper
        .onNetworkRequesting(
            url: 'books/$isbn13', methode: METHODE.get, isAuthorize: false)
        .then((response) {
      bookDetailModel.value = BookDetailModel.fromJson(response);

      // rating(double.parse(bookDetailModel.value.rating!));
      isLoading(false);
    });
  }
}
