import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';

Widget defaultButton({
  double width = double.infinity,
  bool isUpper = true,
  required VoidCallback onTap,
  required String text,
  required double radius,
   double? size,
  TextStyle? textStyle,

}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),

        gradient:const  LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.redDark,
            AppColors.red,

          ],
        ),
      ),
      width: width,
      child: MaterialButton(

        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            isUpper ? text.toUpperCase() : text,
            style:textStyle??TextStyle(
              color: Colors.white,
              fontSize: size?? 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
Widget divider({hight, thickness, endIndent, indent}) => Divider(
      color: AppColors.tWhiteColor,
      height: hight,
      thickness: thickness,
      endIndent: endIndent,
      indent: indent,
    );
