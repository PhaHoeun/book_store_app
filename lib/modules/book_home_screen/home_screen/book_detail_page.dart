import 'package:book_store_app/modules/book_home_screen/controller/book_detail_controller.dart';
import 'package:book_store_app/utils/app_setting/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BookDetail extends StatefulWidget {
  const BookDetail({
    Key? key,
    // this.title,
    // this.author,
    // this.price,
    // this.subtitle,
    // this.description,
    // this.rating,
    // this.image,
    this.isbn13,
  }) : super(key: key);
  // final String? title;
  // final String? author;
  // final String? price;
  // final String? subtitle;
  // final String? description;
  // final String? rating;
  // final String? image;
  final String? isbn13;

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  BookDetailController bookDetailController = Get.put(BookDetailController());
  @override
  void initState() {
    bookDetailController.onFetchDataBookDetail(widget.isbn13);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Obx(() => bookDetailController.isLoading.value
      //       ? const Text("")
      //       : Text('${bookDetailController.bookDetailModel.value.title}')),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Obx(
            () => bookDetailController.isLoading.value
                ? Center(
                    child: LoadingAnimationWidget.inkDrop(
                        color: Colors.amber, size: 80),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            splashColor: AppColors.priceColor,
                            // highlightColor: Colors.red,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.only(left: 10),
                              child: const Icon(Icons.arrow_back_ios),
                            ),
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  bookDetailController
                                              .bookDetailModel.value.title !=
                                          null
                                      ? "${bookDetailController.bookDetailModel.value.title}"
                                      : 'Invalid data',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  bookDetailController
                                              .bookDetailModel.value.authors !=
                                          null
                                      ? "${bookDetailController.bookDetailModel.value.authors}"
                                      : 'Invalid data',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Text(
                                  bookDetailController
                                              .bookDetailModel.value.price !=
                                          null
                                      ? "${bookDetailController.bookDetailModel.value.price}"
                                      : 'Invalid data',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: AppColors.priceColor,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  bookDetailController
                                              .bookDetailModel.value.subtitle !=
                                          null
                                      ? "${bookDetailController.bookDetailModel.value.subtitle}"
                                      : 'Invalid data',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColors.primaryColor,
                                      overflow: TextOverflow.fade),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              image: DecorationImage(
                                image: NetworkImage(
                                  bookDetailController
                                              .bookDetailModel.value.image !=
                                          null
                                      ? "${bookDetailController.bookDetailModel.value.image}"
                                      : 'Image not found',
                                ),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBar(
                            ignoreGestures: true,
                            initialRating:
                                // bookDetailController.rating.value,
                                double.parse(bookDetailController
                                        .bookDetailModel.value.rating ??
                                    '0'),
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 25,
                            itemPadding: const EdgeInsets.only(left: 5),
                            ratingWidget: RatingWidget(
                                full: const Icon(Icons.star,
                                    color: Colors.orange),
                                half: const Icon(
                                  Icons.star_half,
                                  color: Colors.orange,
                                ),
                                empty: const Icon(
                                  Icons.star_outline,
                                  color: Colors.orange,
                                )),
                            onRatingUpdate: (value) {},
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "${bookDetailController.bookDetailModel.value.rating}/5",
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Divider(
                          color: Colors.grey,
                          height: 40,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Text(
                          bookDetailController.bookDetailModel.value.desc !=
                                  null
                              ? "${bookDetailController.bookDetailModel.value.desc}"
                              : 'Invalid data',
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                          ),
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 80),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const Icon(Icons.star, color: AppColors.priceColor),
                      //     const Icon(Icons.star, color: AppColors.priceColor),
                      //     const Icon(Icons.star, color: AppColors.priceColor),
                      //     const Icon(Icons.star, color: AppColors.priceColor),
                      //     const Icon(Icons.star, color: AppColors.priceColor),
                      //     Text(bookDetailController
                      //                 .bookDetailModel.value.rating !=
                      //             null
                      //         ? " ${bookDetailController.bookDetailModel.value.rating}/5"
                      //         : 'Invalid data'),
                      //   ],
                      // ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
