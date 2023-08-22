import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';

Widget defaultButton({
  double width = double.infinity,
  bool isUpper = true,
  required VoidCallback onTap,
  required String text,
  required double radius,
  required double size,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.pDarkColor,
            AppColors.pRedAccentColor,
          ],
        ),
      ),
      width: width,
      child: MaterialButton(
        onPressed: onTap,
        child: Text(isUpper ? text.toUpperCase() : text,
            style: AppTextStyle.bodyWhiteFontWith16
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
Widget divider({hight, thickness, endIndent, indent}) => Divider(
      color: AppColors.tWhiteColor,
      height: hight,
      thickness: thickness,
      endIndent: endIndent,
      indent: indent,
    );
