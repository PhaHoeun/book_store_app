import 'package:book_store_app/modules/book_home_screen/model/home_model.dart';
import 'package:book_store_app/modules/book_home_screen/model/search_model.dart';
import 'package:book_store_app/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();
  var searchModel = SearchModel().obs;
  var searchList = <HomeModel>[].obs;
  var isLoading = false.obs;
  var title = ''.obs;

  Future<List<HomeModel>> onFetchDataSearch(String? title) async {
    isLoading(true);
    await apiBaseHelper
        .onNetworkRequesting(
            url: 'search/$title', methode: METHODE.get, isAuthorize: false)
        .then((response) {
      debugPrint("success");
      searchList.clear();
      response['books'].map((e) {
        searchList.add(HomeModel.fromJson(e));
      }).toList();
      isLoading(false);
    });
    return searchList;
  }
}
