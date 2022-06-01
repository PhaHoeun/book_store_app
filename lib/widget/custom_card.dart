import 'package:book_store_app/utils/app_setting/app_color.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.image, this.title, this.price, this.onTap})
      : super(key: key);
  final String? title;
  final String? image;
  final String? price;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 15),
            width: 130,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: DecorationImage(
                image: NetworkImage("$image"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: 130,
            child: Text(
              "$title",
              // overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            price == "\$0.00" ? "Free" : "$price",
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
