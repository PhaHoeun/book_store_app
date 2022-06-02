import 'package:book_store_app/modules/book_home_screen/model/home_model.dart';
import 'package:book_store_app/utils/helper/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();
  final homeModel = HomeModel().obs;
  final homeList = <HomeModel>[].obs;
  final isLoading = false.obs;
  final isShow = false.obs;

  Future<List<HomeModel>> onFetchDataHome() async {
    isLoading(true);
    debugPrint("=====================1111");
    apiBaseHelper
        .onNetworkRequesting(
            url: 'new', methode: METHODE.get, isAuthorize: false)
        .then((response) {
      debugPrint("=====================2222");
      homeList.clear();
      response['books'].map((e) {
        // debugPrint("=====================3333");
        homeList.add((HomeModel.fromJson(e)));
      }).toList();
      Future.delayed(const Duration(seconds: 2), () {
        isLoading(false);
      });
    });
    return homeList;
  }
}
