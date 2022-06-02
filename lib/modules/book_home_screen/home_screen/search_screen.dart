import 'package:book_store_app/modules/book_home_screen/controller/book_detail_controller.dart';
import 'package:book_store_app/modules/book_home_screen/controller/search_controller.dart';
import 'package:book_store_app/modules/book_home_screen/home_screen/book_detail_page.dart';
import 'package:book_store_app/utils/app_setting/app_color.dart';
import 'package:book_store_app/widget/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchController searchController = Get.put(SearchController());

  BookDetailController bookDetailController = Get.put(BookDetailController());
  @override
  void initState() {
    searchController.onFetchDataSearch(widget.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    searchController.onFetchDataSearch(widget.title);
    return Scaffold(
        appBar: AppBar(
          title: Text("Search for '${widget.title}'"),
        ),
        body: Obx(
          () => searchController.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : searchController.searchList.isEmpty
                  ? Center(
                      child: Text(
                      "'${widget.title}' not found!",
                      style: const TextStyle(
                        color: AppColors.priceColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ))
                  : SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 0),
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          // crossAxisAlignment: WrapCrossAlignment.center,
                          // runAlignment: WrapAlignment.center,
                          // spacing: 30,
                          runSpacing: 20,
                          children: searchController.searchList
                              .asMap()
                              .entries
                              .map((e) {
                            return CustomCard(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BookDetail(
                                      isbn13: e.value.isbn13,
                                    ),
                                  ),
                                );
                              },
                              image: e.value.image,
                              title: e.value.title,
                              price: e.value.price,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
        ));
  }
}
