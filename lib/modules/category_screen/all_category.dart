import 'package:book_store_app/modules/book_home_screen/controller/home_controller.dart';
import 'package:book_store_app/modules/book_home_screen/controller/search_controller.dart';
import 'package:book_store_app/modules/book_home_screen/home_screen/book_detail_page.dart';
import 'package:book_store_app/modules/book_home_screen/home_screen/search_screen.dart';
import 'package:book_store_app/widget/custom_ads.dart';
import 'package:book_store_app/widget/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({Key? key}) : super(key: key);

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  HomeController homeController = Get.put(HomeController());
  var searchController = Get.put(SearchsController());

  @override
  void initState() {
    homeController.onFetchDataHome();
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => homeController.isLoading.value
            ? const Center(
                child: SpinKitFadingCircle(
                  color: Colors.amber,
                  size: 80,
                  duration: Duration(milliseconds: 1000),
                ),
                // LoadingAnimationWidget.inkDrop(
                //     color: Colors.amber, size: 80),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.leaderinme.org/wp-content/uploads/2018/10/AdobeStock_137207473SM.jpg",
                              ),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 50),
                          child: Form(
                            key: _formKey,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.only(left: 20),
                                hintText: "Search 7 million books",
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return SearchScreen(
                                                title: searchController
                                                    .title.value);
                                          },
                                        ),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              onSaved: (value) {
                                searchController.title(value);
                              },
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 150,
                          left: 25,
                          child: Text(
                            "SEARCH\nINSTRUCTIVE\nBOOKS",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 25, top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Bestsellers",
                            style: TextStyle(
                              color: Color.fromARGB(255, 43, 108, 161),
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              homeController.isShow.value =
                                  !homeController.isShow.value;
                            },
                            child: homeController.isShow.value
                                ? const Text(
                                    "View less",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 34, 170, 156),
                                    ),
                                  )
                                : const Text(
                                    "View more",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 34, 170, 156),
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    homeController.isShow.value
                        ? Wrap(
                            spacing: 30,
                            runSpacing: 20,
                            children: homeController.homeList
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
                          )
                        : SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: homeController.homeList
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
                  ],
                ),
              ),
      ),
      bottomNavigationBar: Obx(
        () => homeController.isLoading.value
            ? const SizedBox()
            : const CustomAdvertising(),
      ),
    );
  }
}
