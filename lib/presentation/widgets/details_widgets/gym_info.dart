import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';

Widget gymInfo(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  return Padding(
    padding: EdgeInsets.only(
      top: height / 40,
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('نوع', style: AppTextStyle.bodyWhiteFontWith16),
      SizedBox(
        height: height / 110,
      ),
      Text('هذا مجرد نص تجريبي فقط', style: AppTextStyle.bodyGreyFont),
      SizedBox(
        height: height / 110,
      ),
      Text('العنوان', style: AppTextStyle.bodyWhiteFontWith16),
      SizedBox(
        height: height / 110,
      ),
      Text('هذا مجرد نص تجريبي فقط',
          style: TextStyle(
            color: AppColors.tGreyColor,
            fontSize: height * 0.015,
          )),
      Text('العروض', style: AppTextStyle.bodyWhiteFontWith16),
      SizedBox(
        height: height / 110,
      ),
      Text('هذا مجرد نص تجريبي فقط',
          style: TextStyle(
            color: AppColors.tGreyColor,
            fontSize: height * 0.015,
          )),
      Text('خدمات', style: AppTextStyle.bodyWhiteFontWith16),
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
