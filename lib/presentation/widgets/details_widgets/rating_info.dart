import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget ratingWidget(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return ListView.separated(
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(top: height * 0.02, right: height * 0.02),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(height * 0.01),
          child: Container(
            height: height * 0.1,
            color: AppColors.tBlackColor,
            child: Padding(
              padding:
                  EdgeInsets.only(top: height * 0.01, right: height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RatingBar.builder(
                          itemSize: width * 0.03,
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                      SizedBox(
                        width: width / 2.3,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('مستخدم',
                            style: TextStyle(
                                color: AppColors.tWhiteColor,
                                fontSize: height * 0.020,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(height * 0.02),
                        child: Container(
                          color: AppColors.tGreyColor,
                          height: height / 40,
                          width: width / 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Text('هذا مجرد نص تجريبي فقط',
                      style: TextStyle(
                        color: AppColors.tGreyColor,
                        fontSize: height * 0.015,
                      )),
                ],
              ),
            ),
          ),
        ),
      );
    },
    separatorBuilder: (context, index) {
      return const SizedBox(
        height: 10,
      );
    },
    itemCount: 5,
  );
}
