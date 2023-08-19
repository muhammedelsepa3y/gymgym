import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';

Widget gymInfo(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  return Padding(
    padding: EdgeInsets.only(
      top: height / 40,
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Text('نوع',
          style: TextStyle(
              color: AppColors.tWhiteColor,
              fontSize: height * 0.025,
              fontWeight: FontWeight.bold)),
      SizedBox(
        height: height / 80,
      ),
      Text('هذا مجرد نص تجريبي فقط',
          style: TextStyle(
            color: AppColors.tGreyColor,
            fontSize: height * 0.015,
          )),
      SizedBox(
        height: height / 70,
      ),
      Text('العنوان',
          style: TextStyle(
              color: AppColors.tWhiteColor,
              fontSize: height * 0.025,
              fontWeight: FontWeight.bold)),
      SizedBox(
        height: height / 80,
      ),
      Text('هذا مجرد نص تجريبي فقط',
          style: TextStyle(
            color: AppColors.tGreyColor,
            fontSize: height * 0.015,
          )),
      SizedBox(
        height: height / 70,
      ),
      Text('العروض',
          style: TextStyle(
              color: AppColors.tWhiteColor,
              fontSize: height * 0.025,
              fontWeight: FontWeight.bold)),
      SizedBox(
        height: height / 80,
      ),
      Text('هذا مجرد نص تجريبي فقط',
          style: TextStyle(
            color: AppColors.tGreyColor,
            fontSize: height * 0.015,
          )),
      SizedBox(
        height: height / 70,
      ),
      Text('خدمات',
          style: TextStyle(
              color: AppColors.tWhiteColor,
              fontSize: height * 0.025,
              fontWeight: FontWeight.bold)),
      SizedBox(
        height: height / 100,
      ),
      Text('هذا مجرد نص تجريبي فقط',
          style: TextStyle(
            color: AppColors.tGreyColor,
            fontSize: height * 0.015,
          )),
      Text('هذا مجرد نص تجريبي فقط',
          style: TextStyle(
            color: AppColors.tGreyColor,
            fontSize: height * 0.015,
          )),
    ]),
  );
}
